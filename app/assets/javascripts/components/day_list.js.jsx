var DayList = React.createClass({
    render: function() {
        return (
            <div className="col-sm-3">
                <div id={this.props.title} className="day-list">
                    <div className="day-list-header">{this.props.title} {this.props.day}</div>
                    {this.props.tasks.map((task) => {
                        return <DayListItem task={task} key={task.id} />;
                    })}
                </div>
            </div>);
    }
});