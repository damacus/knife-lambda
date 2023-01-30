FROM ruby:alpine3.13

ENV FUNCTION_DIR="/function"
RUN mkdir ${FUNCTION_DIR}
COPY Gemfile Gemfile.lock ${FUNCTION_DIR}
WORKDIR ${FUNCTION_DIR}
RUN apk add ruby-dev alpine-sdk\
  && bundle install\
  && apk del ruby-dev alpine-sdk
ENTRYPOINT ["bash"]

# # Install bundler
# RUN gem install bundler
# # Copy function code
#
# COPY app.rb ${FUNCTION_DIR}
# RUN bundle install

# ENTRYPOINT ["/usr/local/bin/aws_lambda_ric"]
# CMD ["app.App::Handler.process"]
