package Menu;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/form")
public class MenuRegisterController extends HttpServlet {

    private final MenuService menuService = new MenuService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        // 한글 인코딩 처리
        request.setCharacterEncoding("UTF-8");

        // 폼에서 전송된 데이터 받기
        String name = request.getParameter("name");
        String spicy = request.getParameter("spicy");
        String price = request.getParameter("price");

        //service에 데이터 저장 요청하기
        Menu menu = new Menu(name, spicy, price);
        menuService.insertMenu(menu);

        response.sendRedirect("list");
    }

}
