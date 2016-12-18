package cmd.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.CmdService;
import helper.util.FileUtil;


@Controller("cmd")
@RequestMapping("/cmd")
public class CmdController
{
    private final static Log logger = LogFactory.getLog(CmdController.class);
    
    @Resource(name = "cmdService")
	private CmdService cmdService;
   	
	/**
	 * 메인 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/main.do")
	public ModelAndView main(	HttpServletRequest 					request,
								HttpServletResponse 				response) throws Exception {
		
		List<Object> potolio_list = null;
		
		potolio_list = cmdService.mainImg_GET();
		
		ModelAndView mav = new ModelAndView("main/main");
		mav.addObject("potolio_list", potolio_list);
		return mav;
	}
	
	/**
	 * About 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/about.do")
	public String about(	HttpServletRequest 					request,
							HttpServletResponse 				response) throws Exception {
				
		return "main/about";
	}
	
	/**
	 * service 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/service.do")
	public String service(	HttpServletRequest 					request,
							HttpServletResponse 				response) throws Exception {
				
		return "main/service";
	}
	
	/**
	 * contact 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/contact.do")
	public String contact(	HttpServletRequest 					request,
							HttpServletResponse 				response) throws Exception {
				
		return "main/contact";
	}
	
	/**
	 * portfolio-1-col 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/portfolio-1-col.do")
	public ModelAndView portfolio_1_col(	HttpServletRequest 					request,
											HttpServletResponse 				response) throws Exception {
		List<Object> potolio_list = null;
		potolio_list = cmdService.cgImg_GET();		
		ModelAndView mav = new ModelAndView("portfolio/portfolio-1-col");
		mav.addObject("potolio_list", potolio_list);
		return mav;
	}
	
	/**
	 * portfolio-2-col 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/portfolio-2-col.do")
	public String portfolio_2_col(	HttpServletRequest 					request,
									HttpServletResponse 				response) throws Exception {
				
		return "portfolio/portfolio-2-col";
	}
	
	/**
	 * portfolioItem 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/portfolioItem.do")
	public String portfolioItem(	HttpServletRequest 					request,
									HttpServletResponse 				response) throws Exception {
				
		return "portfolio/portfolio-item";
	}
	
	
	
	/**
	 * 업체파일업로드
	 * 
	 * @param req
	 * @param res
	 * @return ModelAndView
	 * @throws BusinessException
	 */
	@RequestMapping("/saveCompanyFile.do")
	public ModelAndView saveCompanyFile(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		int result = 0;

		try {

			HttpSession sesson = req.getSession();
			String doc_root = sesson.getServletContext().getRealPath("/upload");

			String fileDestPath = "";
			String member_no = pMap.get("member_no").toString();
			fileDestPath = doc_root + File.separator + "img" + File.separator + member_no;

			String fileUploadPath = (String) pMap.get("fileUploadPath");
			String orgName = (String) pMap.get("fileNewName");
			String destination = (String) pMap.get("destination");

			System.out.println(" * 임시 파일 경로 : " + destination);

			if (!orgName.equals("") && !fileUploadPath.equals("")) {
				String temp_file_ext = orgName.substring(orgName.lastIndexOf(".") + 1);
				String temp_total_path = destination;
				Calendar calendar = Calendar.getInstance();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
				String today = dateFormat.format(calendar.getTime());
				String newName = member_no + today + "." + temp_file_ext;
				// System.gc();
				FileUtil.moveFile(temp_total_path, fileDestPath, newName);

				System.out.println(" * 새로 저장된 파일 경로 : " + fileDestPath);
				System.out.println(" * 새로 저장된 파일 이름 : " + newName);

				rMap.put("fileUploadPath", fileDestPath);
				rMap.put("fileNewName", newName);
			}
		

		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("resultCode", result);

		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;
	}
	
	
	//==================================================================================================================//
	
	/**
	 * String 형
	 * 
	 * @return
	 */
    @RequestMapping(value="/string.do")
    public String string(	HttpServletRequest 					request,
							HttpServletResponse 				response,
							Model 								model) throws Exception {
    	
    	String IsValid = "";
    	
    	model.addAttribute("", IsValid);
    	
    	return "main/main";	
    }
    
    /**
     * ModelAndView 형
     * 
     * @param map
     * @return
     */
    @RequestMapping(value="/modelandview.do")
    public ModelAndView insert_member( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("main/main");
    	return mav;
    }
    
	/**
	 * ajax 통신 컨트롤러 기본 Default
	 * 
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/ajax.do")
	public ModelAndView ajax(	HttpServletRequest 					request,
								HttpServletResponse 				response,	
								@RequestParam Map<String, Object> 	map) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
	
	
}

