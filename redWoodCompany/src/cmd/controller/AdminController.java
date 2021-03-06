package cmd.controller;

import java.io.File;
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

import cmd.service.AdminService;
import cmd.service.CmdService;


@Controller("admin")
@RequestMapping("/admin")
public class AdminController
{
    private final static Log logger = LogFactory.getLog(AdminController.class);
   
	@Resource(name = "adminService")
	private AdminService adminService;
	
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
		
		ModelAndView mav = new ModelAndView("admin/admin_main");
		mav.addObject("potolio_list", potolio_list);
		return mav;
	}
	
	/**
	 * CG 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/cg.do")
	public ModelAndView cg(		HttpServletRequest 					request,
								HttpServletResponse 				response) throws Exception {
		
		List<Object> potolio_list = null;
		potolio_list = cmdService.cgImg_GET();		
		ModelAndView mav = new ModelAndView("admin/admin_cg");
		mav.addObject("potolio_list", potolio_list);
		return mav;
	}
	
	/**
	 * construction 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/construction.do")
	public ModelAndView construction(		HttpServletRequest 					request,
								HttpServletResponse 				response) throws Exception {
		
		List<Object> potolio_list = null;
		potolio_list = cmdService.constructionImg_GET();		
		ModelAndView mav = new ModelAndView("admin/admin_construction");
		mav.addObject("potolio_list", potolio_list);
		return mav;
	}
	
	/**
	 * vr 페이지 이동
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/vr.do")
	public ModelAndView vr(		HttpServletRequest 					request,
								HttpServletResponse 				response) throws Exception {
		
		List<Object> potolio_list = null;
		potolio_list = cmdService.vrMP4_GET();		
		ModelAndView mav = new ModelAndView("admin/admin_vr");
		mav.addObject("potolio_list", potolio_list);
		return mav;
	}
	
	/**
	 * 메인 페이지 이미지 등록
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
    @RequestMapping("/save_img.do")
    public ModelAndView save_img(	HttpServletRequest 					request,
													HttpServletResponse 				response,
										    		@RequestParam Map<String, Object> 	map) throws Exception {
    	adminService.insert_img(map);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
    
	/**
	 * cg 페이지 이미지 등록 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
    @RequestMapping("/save_img_cg.do")
    public ModelAndView save_img_cg(	HttpServletRequest 					request,
										HttpServletResponse 				response,
										@RequestParam Map<String, Object> 	map) throws Exception {
    	adminService.save_img_cg(map);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
    
	/**
	 * construction 페이지 이미지 등록 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
    @RequestMapping("/save_img_construction.do")
    public ModelAndView save_img_construction(	HttpServletRequest 					request,
												HttpServletResponse 				response,
												@RequestParam Map<String, Object> 	map) throws Exception {
    	adminService.save_img_construction(map);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
    
	/**
	 * construction 페이지 이미지 등록 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
    @RequestMapping("/save_img_vr.do")
    public ModelAndView save_img_vr(	HttpServletRequest 					request,
												HttpServletResponse 				response,
												@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	adminService.save_mp4_vr(map);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
    
	/**
	 * cg 페이지 이미지 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
    @RequestMapping("/cgPortpolio_delete.do")
    public ModelAndView cgPortpolio_delete(		HttpServletRequest 					request,
												HttpServletResponse 				response,
										    	@RequestParam Map<String, Object> 	map) throws Exception {
    	Map<String, Object>		cgPortpolio = null;
    	
    	cgPortpolio = adminService.select_imgName(map);
    	
    	String deletePath = (String) cgPortpolio.get("img_Path");
    	String img_Name = (String) cgPortpolio.get("img_Name");
    	
    	deletePath = deletePath + "\\" +img_Name;
    	
    	System.out.println("**************"+deletePath);
    	
    	File file = new File(deletePath);
    	file.delete();
    	
    	adminService.delete_img_cg(map);
    	
		ModelAndView mav = new ModelAndView("redirect:/admin/cg.do");
		return mav;
	}
    
    @RequestMapping("/vrMp4_delete.do")
    public ModelAndView vrMp4_delete(	HttpServletRequest 					request,
										HttpServletResponse 				response,
										@RequestParam Map<String, Object> 	map) throws Exception {
		Map<String, Object>		vrMp4 = null;
		
		vrMp4 = adminService.select_vrMp4(map);
		
		String deletePath = (String) vrMp4.get("img_Path");
		String img_Name = (String) vrMp4.get("img_Name");
		
		deletePath = deletePath + "\\" +img_Name;
		
		System.out.println("**************"+deletePath);
		
		File file = new File(deletePath);
		file.delete();
		
		adminService.delete_vrMp4(map);
		
		ModelAndView mav = new ModelAndView("redirect:/admin/vr.do");
		return mav;
	}
    
	/**
	 * construction 페이지 이미지 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
    @RequestMapping("/constructionPortpolio_delete.do")
    public ModelAndView constructionPortpolio_delete(		HttpServletRequest 					request,
												HttpServletResponse 				response,
										    	@RequestParam Map<String, Object> 	map) throws Exception {
    	adminService.delete_img_construction(map);
		ModelAndView mav = new ModelAndView("redirect:/admin/construction.do");
		return mav;
	}
	
	
}

