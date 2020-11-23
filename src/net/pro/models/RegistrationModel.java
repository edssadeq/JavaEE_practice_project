package net.pro.models;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.pro.beans.User;

public class RegistrationModel {

	private static final String PARAM_NAME = "name";
	private static final String PARAM_EMAIL = "email";
	private static final String PARAM_PASSWORD = "password";
	private static final String PARAM_PASSCONF = "passwordConf";

	private Map<String, String> errors = new HashMap<>();
	private String result = null;

	public User register(HttpServletRequest request) {
		User user = null;
		String name;
		String email;
		String password;
		String passwordConf;

		name = getParameterValue(request, PARAM_NAME);
		try {
			nameValidation(name);
		} catch (Exception e) {
			addError(PARAM_NAME, e.getMessage());
		}
		email = getParameterValue(request, PARAM_EMAIL);
		try {
			emailValidation(email);
		} catch (Exception e) {
			addError(PARAM_EMAIL, e.getMessage());
		}
		password = getParameterValue(request, PARAM_PASSWORD);
		passwordConf = getParameterValue(request, PARAM_PASSCONF);
		try {
			passwordValidation(password, passwordConf);
		} catch (Exception e) {
			addError(PARAM_PASSCONF, e.getMessage());
		}

		if (errors.isEmpty()) {
			result = "Registration is done succefully.";
		} else {
			result = "Registration failed !";
		}

		user = new User();

		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		return user;
	}

	private String getParameterValue(HttpServletRequest request, String paramName) {
		String value = request.getParameter(paramName);
		if (value == null || value.isEmpty()) {
			return null;
		}
		return value;
	}

	private void nameValidation(String name) throws Exception {
		if (!(name == null)) {
			if (name.length() < 2) {
				throw new Exception("name must contains 2 characters at least.");
			}
		} else {
			throw new Exception("name can not be empty.");
		}
	}

	private void emailValidation(String email) throws Exception {
		String email_regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"; // email
		if (!(email == null)) {
			if (!(email.length() < 5)) {
				if (!(email.matches(email_regex))) {
					throw new Exception("plaise drop a valide email address.");
				}
			} else {
				throw new Exception("email address must contains 5 characters at least.");
			}
		} else {
			throw new Exception("email address  can not be empty.");
		}
	}

	private void passwordValidation(String password, String passConf) throws Exception {
		if (!(password == null)) {
			if (!(password.length() < 4)) {
				if (!password.equals(passConf)) {
					throw new Exception("password and password confirmation are not the same.");
				}
			} else {
				throw new Exception("password must contains 4 characters at least.");
			}
		} else {
			throw new Exception("password can not be empty.");
		}
	}

	private void addError(String cause, String message) {
		errors.put(cause, message);
	}

	public Map<String, String> getErrors() {
		return errors;
	}

	public void setErrors(Map<String, String> errors) {
		this.errors = errors;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
