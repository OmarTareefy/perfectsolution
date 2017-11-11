package net.perfectsolution.frontend.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import net.perfectsolution.backend.dto.Product;
import net.perfectsolution.backend.dto.Service;


public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Service.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		//whether file has been selected or not
		Product product = (Product) target;
		if(product.getFile() == null || 
				product.getFile().getOriginalFilename().equals("")){
			
			errors.rejectValue("file", null, "Please select an image file to Upload!");
			return;
		}
		
		String fileContentType = product.getFile().getContentType();
		if(!(fileContentType.equals("image/jpeg") || 
			fileContentType.equals("image/png") ||
			fileContentType.equals("image/gif")) ){
			
			errors.rejectValue("file", null, "Please use only an image file to Upload");
			return;
		}


	}

}
