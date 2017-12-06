var WeekList = React.createClass({
    render: function() {
        return (
            <div>
                {this.props.tasks.map((day) => {
                    return <DayList task={task} key={task.id} />;
                })}
            </div>);
    }
});