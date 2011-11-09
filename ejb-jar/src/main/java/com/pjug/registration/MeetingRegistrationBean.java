package com.pjug.registration;

import javax.ejb.Stateless;

import org.hibernate.validator.Valid;
import org.jboss.seam.annotations.In;
import org.jboss.seam.annotations.Logger;
import org.jboss.seam.annotations.Name;
import org.jboss.seam.annotations.Out;
import org.jboss.seam.log.Log;

@Name(value = "meetingRegistration")
@Stateless
public class MeetingRegistrationBean implements MeetingRegistration {

	@In
	@Out
	@Valid
	private Person person;

	@Logger
	private Log log;

	public String register() {
		person.setRegistrationNumber(System.currentTimeMillis() + "");
		log.info("registered pjug user %s", person.getFirstName());
		return "/registered.seam";

	}

}
