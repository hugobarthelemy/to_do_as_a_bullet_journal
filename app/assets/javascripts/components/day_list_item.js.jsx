var DayListItem = React.createClass({
    render: function() {
        return (
            <div className="card">
                <div className="card-header">{this.props.task.title}</div>
                <div className="card-body">Boby of {this.props.task.title}</div>
            </div>);
    }
});