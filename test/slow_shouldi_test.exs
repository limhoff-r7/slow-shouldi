defmodule SlowShouldiTest do
  use ShouldI

  setup context do
    context
  end

  with "single_access_token parameter" do
    setup context do
      context
    end

    with "valid Metasploit.Pro.User.single_accces_token" do
      setup context do
        context
      end

      with "multiple users" do
        setup context do
          context
        end

        with "admin: true" do
          setup context do
            context
          end

          should "GET /api/v1/users retrieves all users" do
          end
        end

        with "admin: false" do
          setup context do
            context
          end

          should "GET /api/v1/users retrieves only current user" do
          end
        end
      end

      with "valid Metasploit.Pro.User.id" do
        with "admin: true" do
          setup context do
            context
          end

          should "DELETE /api/v1/users/:id" do
          end

          with "current user's id" do
            should "GET /api/v1/users/:id" do
            end

            with "required data" do
              should "PATCH /api/v1/users/:id" do
              end
            end

            with "optional data" do
              should "PATCH /api/v1/users/:id" do
              end
            end

            with "invalid data" do
              should "receive 422 from PATCH /api/v1/users/:id" do
              end
            end
          end

          with "other user's id" do
            setup context do
              context
            end

            should "GET /api/v1/users/:id" do
            end

            with "required data" do
              should "PATCH /api/v1/users/:id" do
              end
            end

            with "optional data" do
              should "PATCH /api/v1/users/:id" do
              end
            end

            with "invalid data" do
              should "receive 422 from PATCH /api/v1/users/:id" do
              end
            end
          end
        end

        with "admin: false" do
          setup context do
            context
          end

          should "receive 403 from DELETE /api/v1/users/:id" do
          end

          with "current user's id" do
            should "GET /api/v1/users/:id" do
            end

            with "required data" do
              should "PATCH /api/v1/users/:id" do
              end
            end

            with "optional data" do
              should "PATCH /api/v1/users/:id" do
              end
            end

            with "invalid data" do
              should "receive 422 from PATCH /api/v1/users/:id" do
              end
            end
          end

          with "other user's id" do
            setup context do
              context
            end

            should "receive 403 from GET /api/v1/users/:id" do
            end

            with "required data" do
              should "receive 403 from PATCH /api/v1/users/:id" do
              end
            end

            with "optional data" do
              should "receive 403 from PATCH /api/v1/users/:id" do
              end
            end

            with "invalid data" do
              should "receive 403 from PATCH /api/v1/users/:id" do
              end
            end
          end
        end
      end

      with "invalid Metasploit.Pro.User.id" do
        should "receive 404 DELETE /api/v1/users/:id" do
        end

        should "receive 404 from GET /api/v1/users/:id" do
        end

        should "receive 404 from PATCH /api/v1/users/:id" do
        end
      end

      with "admin: true" do
        setup context do
          context
        end

        with "valid data" do
          should "POST /api/v1/users" do
          end
        end

        with "invalid data" do
          should "receive 422 from POST /api/v1/users" do
          end
        end
      end

      with "admin: false" do
        setup context do
          context
        end

        should "receive 403 from POST /api/v1/users" do
        end
      end
    end

    with "invalid Metasploit.Pro.User.single_access_token" do
      setup context do
        context
      end

      should "receive 401 from GET /api/v1/users" do
      end

      should "receive 401 from GET /api/v1/users/:id" do
      end

      should "receive 401 from POST /api/v1/users" do
      end

      should "receive 401 from PATCH /api/v1/users/:id" do
      end
    end
  end

  with "no single_access_token parameter" do
    with "session" do
      setup context do
        context
      end

      with "valid persistence_token" do
        setup context do
          context
        end

        with "multiple users" do
          setup context do
            context
          end

          with "admin: true" do
            setup context do
              context
            end

            should "GET /api/v1/users retrieves all users" do
            end
          end

          with "admin: false" do
            setup context do
              context
            end

            should "GET /api/v1/users retrieves only current user" do
            end
          end
        end

        with "valid Metasploit.Pro.User.id" do
          with "admin: true" do
            setup context do
              context
            end

            should "DELETE /api/v1/users/:id" do
            end

            with "current user's id" do
              should "GET /api/v1/users/:id" do
              end

              with "required data" do
                should "PATCH /api/v1/users/:id" do
                end
              end

              with "optional data" do
                should "PATCH /api/v1/users/:id" do
                end
              end

              with "invalid data" do
                should "receive 422 from PATCH /api/v1/users/:id" do
                end
              end
            end

            with "other user's id" do
              setup context do
                context
              end

              should "GET /api/v1/users/:id" do
              end

              with "required data" do
                should "PATCH /api/v1/users/:id" do
                end
              end

              with "optional data" do
                should "PATCH /api/v1/users/:id" do
                end
              end

              with "invalid data" do
                should "receive 422 from PATCH /api/v1/users/:id" do
                end
              end
            end
          end

          with "admin: false" do
            setup context do
              context
            end

            should "receive 403 from DELETE /api/v1/users/:id" do
            end

            with "current user's id" do
              should "GET /api/v1/users/:id" do
              end

              with "required data" do
                should "PATCH /api/v1/users/:id" do
                end
              end

              with "optional data" do
                should "PATCH /api/v1/users/:id" do
                end
              end

              with "invalid data" do
                should "receive 422 from PATCH /api/v1/users/:id" do
                end
              end
            end

            with "other user's id" do
              setup context do
                context
              end

              should "receive 403 from GET /api/v1/users/:id" do
              end

              with "required data" do
                should "receive 403 from PATCH /api/v1/users/:id" do
                end
              end

              with "optional data" do
                should "receive 403 from PATCH /api/v1/users/:id" do
                end
              end

              with "invalid data" do
                should "receive 403 from PATCH /api/v1/users/:id" do
                end
              end
            end
          end
        end

        with "invalid Metasploit.Pro.User.id" do
          should "receive 404 from DELETE /api/v1/users/:id" do
          end

          should "receive 404 from GET /api/v1/users/:id" do
          end

          should "receive 404 from PATCH /api/v1/users/:id" do
          end
        end

        with "admin: true" do
          setup context do
            context
          end

          with "valid data" do
            should "POST /api/v1/users" do
            end
          end

          with "invalid data" do
            should "receive 422 from POST /api/v1/users" do
            end
          end
        end

        with "admin: false" do
          setup context do
            context
          end

          should "receive 403 from POST /api/v1/users" do
          end
        end
      end

      with "invalid persistence_token" do
        setup context do
          context
        end

        should "receive 401 from DELETE /api/v1/users/:id" do
        end

        should "receive 401 from GET /api/v1/users" do
        end

        should "receive 401 from GET /api/v1/users/:id" do
        end

        should "receive 401 from POST /api/v1/users" do
        end

        should "receive 401 from PATCH /api/v1/users/:id" do
        end
      end
    end

    with "no session" do
      should "receive 401 from DELETE /api/v1/users/:id" do
      end

      should "receive 401 from GET /api/v1/users" do
      end

      should "receive 401 from GET /api/v1/users/:id" do
      end

      should "receive 401 from POST /api/v1/users" do
      end

      should "receive 401 from PATCH /api/v1/users/:id" do
      end
    end
  end
end
