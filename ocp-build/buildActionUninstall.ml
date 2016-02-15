(**************************************************************************)
(*                                                                        *)
(*                              OCamlPro TypeRex                          *)
(*                                                                        *)
(*   Copyright OCamlPro 2011-2016. All rights reserved.                   *)
(*   This file is distributed under the terms of the GPL v3.0             *)
(*      (GNU Public Licence version 3.0).                                 *)
(*                                                                        *)
(*     Contact: <typerex@ocamlpro.com> (http://www.ocamlpro.com/)         *)
(*                                                                        *)
(*  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       *)
(*  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES       *)
(*  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND              *)
(*  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS   *)
(*  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN    *)
(*  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN     *)
(*  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE      *)
(*  SOFTWARE.                                                             *)
(**************************************************************************)


(* ocp-build install [OPTIONS]

  Set the options of the user preference file.

*)

(* open BuildBase *)
open BuildArgs
open BuildOptions
open BuildGlobals
open BuildActions

let arg_list = [

]

let action () = assert false
(*
  let targets = List.rev !targets_arg in

  let p = BuildActions.load_project () in
  let (_env_state, b, projects) = BuildActionBuild.do_prepare_build p targets in
  let install_where = install_where p in
  let uninstall_state = BuildOCamlInstall.uninstall_init install_where in

  if targets <> [] then begin

    List.iter (BuildOCamlInstall.uninstall_by_name uninstall_state) targets;
    BuildOCamlInstall.uninstall_finish uninstall_state;

  end else begin
    List.iter (fun lib ->
      BuildOCamlInstall.uninstall uninstall_state lib)
      projects;
    BuildOCamlInstall.uninstall_finish uninstall_state;
  end
*)

let subcommand = {
  sub_name = "uninstall";
  sub_help =  "Uninstall the project.";
  sub_arg_list = arg_list;
  sub_arg_anon = None;
  sub_arg_usage = [ "Uninstall the project."; ];
  sub_action = action;
}
