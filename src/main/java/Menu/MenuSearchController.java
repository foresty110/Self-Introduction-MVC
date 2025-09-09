package Menu;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class MenuSearchController extends HttpServlet {

    private final MenuService menuService = new MenuService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 한글 인코딩 처리
        request.setCharacterEncoding("UTF-8");

        // 데이터를 request 객체에 담기
        List<Menu> menuList = menuService.getMenu();
        request.setAttribute("menuList", menuList);

        // 목록 페이지로 전달
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list.jsp");
        dispatcher.forward(request, response);

    }


}
