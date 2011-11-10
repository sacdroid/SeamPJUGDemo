package com.pjug.registration;

import javax.ejb.Remove;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.jboss.seam.annotations.Begin;
import org.jboss.seam.annotations.End;
import org.jboss.seam.annotations.Logger;
import org.jboss.seam.annotations.Name;
import org.jboss.seam.annotations.Out;
import org.jboss.seam.core.Events;
import org.jboss.seam.log.Log;

@Name(value = "meetingRegistration")
@Stateful
public class MeetingRegistrationBean implements MeetingRegistration {

	@PersistenceContext
	private EntityManager em;

	@Out
	private Member member;

	@Logger
	private Log log;

	@Begin
	public String createMember() {
		member = new Member();
		log.info("Initilized PUJG member");
		return "/Register.seam";

	}

	@End
	public String register() {
		em.persist(member);
		log.info("Registered PUJG member");
		Events.instance().raiseEvent("memberAdded");
		return "/registered.seam";
	}

	@End
	public String cancel() {
		return "/pjugmembers.seam";
	}

	@Remove
	public void remove() {

	}

}
