var DayListItem = React.createClass({
    render: function() {
        return (
            <div className="day-list-item">
                <div className="task-title">{this.props.task.title}</div>
            </div>);
    }
});