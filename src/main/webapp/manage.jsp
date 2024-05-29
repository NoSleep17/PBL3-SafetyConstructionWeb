<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/manage.css">
    
    <title>Document</title>
</head>
<body>
    <div id="header"></div>
    <div class="wrapper">
        <div class="box-title">
            <span>Manage</span>
        </div>
        <div class="manage-cctv">
            <div class="manage-title">
                <h3>Manage CCTV</h3>
            </div>
            <div class="manage-conten">
                <table id="productTable">
                    <thead>
                        <tr>
                            <th>Camera_ID</th>
                            <th>Camera_name</th>
                            <th>IP_address</th>
                            <th>Status</th>
                            <th>Project</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>CH-01</td>
                            <td>https://www.youtube.com/embed/6lEp1Hb6l9A?si=GVtilqlMQb7E_NDj</td>
                            <td>active</td>
                            <td>1</td>
                            <td>
                                <button class="button_add" onclick="openModal()">Thêm mới</button>
                                <button class="button_fix" onclick="edit(this)">Sửa</button>
                                <button class="button_delete" onclick="deleteRow(this)">Xóa</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>CH-02</td>
                            <td>https://www.youtube.com/embed/6lEp1Hb6l9A?si=GVtilqlMQb7E_NDj</td>
                            <td>active</td>
                            <td>2</td>
                            <td>
                                <button class="button_add" onclick="openModal()">Thêm mới</button>
                                <button class="button_fix" onclick="edit(this)">Sửa</button>
                                <button class="button_delete" onclick="deleteRow(this)">Xóa</button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div id="modal" class="modal">
                    <div class="modal-content">
                        <span class="close" onclick="closeModal()">&times;</span>
                        <h2 id="modalTitle">Thêm Camera</h2>
                        <form id="New_Product_Form">
                            <input type="hidden" id="editIndex">
                            <label for="Camera_name">Camera Name:</label>
                            <input type="text" id="Camera_name" name="Camera_name" required><br>
                            <label for="IP_address">IP_address:</label>
                            <input type="text" id="IP_address" name="IP_address" required><br>
                            <label for="Status">Status:</label>
                            <input type="text" id="Status" name="Status" required><br>
                            <label for="Project">Project:</label>
                            <input type="text" id="Project" name="Project" required><br>
                            <label for="productImage">Hình Sản Phẩm:</label>
                            <input type="file" id="productImage" name="productImage"><br>
                            <button type="button" onclick="saveProduct()">Lưu</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="manage-user">
            <div class="manage-title">
                <h3>Manage User</h3>
            </div>
            <div class="manage-conten">
                <table id="userTable">
                    <thead>
                        <tr>
                            <th>Users_ID</th>
                            <th>Users_name</th>
                            <th>Full_name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>nguyenvana</td>
                            <td>Nguyễn Văn A</td>
                            <td>NguyenVanA@gmail.com</td>
                            <td>0123456789</td>
                            <td>role</td>
                            <td>
                                <button class="button_add" onclick="openModal()">Thêm mới</button>
                                <button class="button_fix" onclick="edit(this)">Sửa</button>
                                <button class="button_delete" onclick="deleteRow(this)">Xóa</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div id="modal2" class="modal">
                    <div class="modal-content">
                        <span class="close" onclick="closeModal2()">&times;</span>
                        <h2 id="modalTitle2">Thêm Người Dùng</h2>
                        <form id="New_User_Form">
                            <input type="hidden" id="editIndex2">
                            <label for="Users_name">Users_name:</label>
                            <input type="text" id="Users_name" name="Users_name" required><br>
                            <label for="Full_name">Full_name:</label>
                            <input type="text" id="Full_name" name="Full_name" required><br>
                            <label for="Email">Email:</label>
                            <input type="text" id="Email" name="Email" required><br>
                            <label for="Phone">Phone:</label>
                            <input type="text" id="Phone" name="Phone" required><br>
                            <label for="Role">Role:</label>
                            <input type="text" id="Role" name="Role" required><br>
                            <button type="button" onclick="saveUser()">Lưu</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        fetch('./header.jsp')
            .then(response => response.text())
            .then(data => {
                document.getElementById('header').innerHTML = data;
            })
            .catch(error => console.error('Error fetching header:', error));

        function openModal() {
            document.getElementById('modal').style.display = 'block';
            document.getElementById('New_Product_Form').reset();
            document.getElementById('editIndex').value = '';
        }

        function closeModal() {
            document.getElementById('modal').style.display = 'none';
        }

        function edit(button) {
            const row = button.parentNode.parentNode;
            const cells = row.getElementsByTagName('td');
            document.getElementById('editIndex').value = row.rowIndex;
            document.getElementById('Camera_name').value = cells[1].textContent;
            document.getElementById('IP_address').value = cells[2].textContent;
            document.getElementById('Status').value = cells[3].textContent;
            document.getElementById('Project').value = cells[4].textContent;
            document.getElementById('modalTitle').textContent = 'Sửa Camera';
            document.getElementById('modal').style.display = 'block';
        }


        function deleteRow(button) {
            const row = button.parentNode.parentNode;
            row.parentNode.removeChild(row);
            alert('Row deleted');
        }

        function openModal2() {
            document.getElementById('modal2').style.display = 'block';
            document.getElementById('New_User_Form').reset();
            document.getElementById('editIndex2').value = '';
        }

        function closeModal2() {
            document.getElementById('modal2').style.display = 'none';
        }

        function edit2(button) {
            const row = button.parentNode.parentNode;
            const cells = row.getElementsByTagName('td');
            document.getElementById('editIndex2').value = row.rowIndex;
            document.getElementById('Users_name').value = cells[1].textContent;
            document.getElementById('Full_name').value = cells[2].textContent;
            document.getElementById('Email').value = cells[3].textContent;
            document.getElementById('Phone').value = cells[4].textContent;
            document.getElementById('Role').value = cells[5].textContent;
            document.getElementById('modalTitle2').textContent = 'Sửa Người Dùng';
            document.getElementById('modal2').style.display = 'block';
        }



        function deleteRow2(button) {
            const row = button.parentNode.parentNode;
            row.parentNode.removeChild(row);
            alert('Row deleted');
        }
    </script>
</body>
</html>
    