package com.pjug.registration;

import java.util.List;

import javax.ejb.Remove;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.jboss.seam.ScopeType;
import org.jboss.seam.annotations.Begin;
import org.jboss.seam.annotations.Factory;
import org.jboss.seam.annotations.In;
import org.jboss.seam.annotations.Logger;
import org.jboss.seam.annotations.Name;
import org.jboss.seam.annotations.Observer;
import org.jboss.seam.annotations.Out;
import org.jboss.seam.annotations.Scope;
import org.jboss.seam.annotations.datamodel.DataModel;
import org.jboss.seam.annotations.datamodel.DataModelSelection;
import org.jboss.seam.log.Log;

import com.pjug.registration.Member;

@Name(value = "meetingMembersBean")
@Stateful
@Scope(ScopeType.SESSION)
public class MeetingMembersBean implements MeetingMembers {

	@PersistenceContext
	private EntityManager em;

	@DataModelSelection
	private Member member;

	@DataModel
	private List<Member> members;

	@Logger
	private Log log;

	@SuppressWarnings("unchecked")
	@Factory("members")
	@Observer("memberAdded")
	public void listMembers() {
		members = em.createQuery("select m from Member m").getResultList();

	}

	@Remove
	public void remove() {

	}

}
