package org.devlog.domain;

import lombok.Data;

@Data
public class VisitCountVO {
	private int visit_id;
    private int visit_ip;
    private int visit_time;
    private int visit_refer;
    private int visit_agent;
}
