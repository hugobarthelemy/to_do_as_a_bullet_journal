var WeekList = React.createClass({
    componentDidMount () {
        let mon = document.getElementById('mon');
        let tue = document.getElementById('tue');
        let wed = document.getElementById('wed');
        let thu = document.getElementById('thu');
        let fri = document.getElementById('fri');
        let sat = document.getElementById('sat');
        let sun = document.getElementById('sun');
        let later = document.getElementById('later');
        dragula([mon, tue, wed, thu, fri, sat, sun, later]);
    },
    render: function() {
        return (
            <div>
                {this.props.week.map((day) => {
                    return <DayList tasks={day.tasks} day={day.day} title={day.title} />;
                })}
            </div>);
    }
});