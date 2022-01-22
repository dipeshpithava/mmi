import React from "react";
import { Row, Col, Container, Card } from "react-bootstrap";

import data from "meta.json";

export const Cards: React.FC = () => {
  return (
    <Container className="my-5 flex-grow-1">
      <p>Sujeet</p>
      <Row>
        
        {(data?.plugins ?? []).map((plugin) => {
          console.log(plugin,'plugin')
          return(
            <Col md={4} key={plugin.name} className="mb-3">
            <Card className="border-none">
              <Card.Body>
                
                <Card.Title>{plugin.name}</Card.Title>
                <Card.Text>{plugin.description}</Card.Text>
              </Card.Body>
            </Card>
          </Col>
          )
       
          
          
         })}
      </Row>
    </Container>
  );
};
