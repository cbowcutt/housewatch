function Resolution(props) {
  return(
    <div className = "Resolution">
      <div className="number">
        {props.number}
      </div>
      <div className="date">
        {props.date}
      </div>
      <div className="title">
        {props.title}
      </div>
    </div>
  )
}

