var DayList = React.createClass({
    render: function() {
        return (
            <div>
                <h1>Bouh</h1>
                {this.props.tasks.map((task) => {
                    return <DayListItem task={task} key={task.id} />;
                })}
            </div>);
    }
});