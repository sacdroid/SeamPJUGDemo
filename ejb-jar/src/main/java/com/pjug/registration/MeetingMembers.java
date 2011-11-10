package com.pjug.registration;

import javax.ejb.Local;

@Local
public interface MeetingMembers {

	public void listMembers();

	public void remove();

}
