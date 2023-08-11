import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let data = ["아침 운동하기", "알고리즘테스트"]
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테이블 뷰 초기화
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        // 테이블 뷰 등록
        view.addSubview(tableView)
    }
    
    // 테이븧 뷰 셀 개수 반환
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // 테이블 뷰 셀 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        //.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // dequeueReusableCell은 '지정된 재사용 식별자에 대해 재사용 가능한 테이블 뷰 셀 객체룰 반환하고 테이블에 추가한다.'
        // withIdentifier은 재사용할 셀을 찾아줄 수 있도록 한다.
        // for은 indexPath를 요구함
        //let number = indexPath.row + 1
        cell.textLabel?.text = data[indexPath.row]
        return cell
    } // 테이블 뷰에 있는 보여줄 셀을 찾음
    
    // 테이블 뷰 셀 선택 처리
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 선택된 셀의 항목 출력
        print("선택된 항목: \(data[indexPath.row])")
        // Do any additional setup after loading the view.
    }
}


