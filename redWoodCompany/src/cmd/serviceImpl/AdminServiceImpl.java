package cmd.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.AdminService;
import helper.dao.CommonDAO;




@Service("adminService")
public class AdminServiceImpl implements AdminService
{
	private final static Log logger = LogFactory.getLog(AdminServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public void insert_img(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.insert_img", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void save_img_cg(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.save_img_cg", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete_img_cg(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.delete_img_cg", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}//end class

