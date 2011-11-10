package com.pjug.registration;

import javax.ejb.Local;

@Local
public interface MeetingRegistration {
	
	public String createMember();
	public String register();
	public String cancel();
	public void remove();
	
}
