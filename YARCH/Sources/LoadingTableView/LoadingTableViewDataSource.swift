import UIKit

/// DataSource для состояния загрузки таблицы
extension LoadingTableViewDataSource {
    struct Configuration {
        var numberOfSection = 1
        var numberOfRowsInSection = 100
    }
}

class LoadingTableViewDataSource: NSObject, UITableViewDataSource {
    let configuration: Configuration

    init(configuration: Configuration = Configuration()) {
        self.configuration = configuration
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return configuration.numberOfSection
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return configuration.numberOfRowsInSection
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithRegistration(type: LoadingTableViewCell.self, indexPath: indexPath)
    }
}
