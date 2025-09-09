package Menu;

import java.util.ArrayList;
import java.util.List;

public class MenuService {
    private static final List<Menu> menuList = new ArrayList<>();

    public void insertMenu(Menu menu) {
        menuList.add(menu);
    }
    public List<Menu> getMenu() {
        return menuList;
    }


}
