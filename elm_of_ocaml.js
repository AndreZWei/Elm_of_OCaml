
// Generated by js_of_ocaml 2.7
(function(joo_global_object_z_)
   {"use strict";
    var
     str_Sys_error_V_="Sys_error",
     num_224_ah_=224,
     str_Invalid_argument_ag_="Invalid_argument",
     num_1024_m_=1024,
     num_57343_U_=57343,
     num_512_af_=512,
     str_End_of_file_ae_="End_of_file",
     str_elm_lang_core_N_abr_ac_="_elm_lang$core$Native_Platform.batch",
     str_Failure_ad_="Failure",
     str_Undefined_recurs_abr_T_="Undefined_recursive_module",
     str_Stack_overflow_ab_="Stack_overflow",
     num_128_e_=128,
     str_d_="",
     str_file_already_abr_v_=" : file already exists",
     num_56320_Q_=56320,
     num_240_R_=240,
     num_2048_S_=2048,
     num_248_a_=248,
     str_Not_found_aa_="Not_found",
     str_Assert_failure_O_="Assert_failure",
     str_P_="/",
     str_Sys_blocked_io___="Sys_blocked_io",
     str_fd_$_="fd ",
     str_Out_of_memory_N_="Out_of_memory",
     str_target_Z_="target",
     str_Match_failure_Y_="Match_failure",
     str_Division_by_zero_X_="Division_by_zero",
     num_1e3_W_=1e3,
      /*<<stdlib.js 1025 20>>*/ caml_oo_last_id_a9_=0;
     /*<<stdlib.js 1036 0>>*/ function caml_fresh_oo_id_n_()
     { /*<<stdlib.js 1037 2>>*/ return caml_oo_last_id_a9_++ /*<<stdlib.js 1038 0>>*/ }
     /*<<mlString.js 50 0>>*/ function caml_str_repeat_bb_(n_a_,s_b_)
     { /*<<mlString.js 51 2>>*/ if(s_b_.repeat)
        /*<<mlString.js 51 16>>*/ return  /*<<mlString.js 51 23>>*/ s_b_.repeat
               (n_a_);
      var
        /*<<mlString.js 52 8>>*/ r_c_=str_d_,
        /*<<mlString.js 52 16>>*/ l_e_=0;
       /*<<mlString.js 53 2>>*/ if(n_a_==0)
        /*<<mlString.js 53 14>>*/ return r_c_;
       /*<<mlString.js 54 2>>*/ for(;;)
        /*<<mlString.js 54 10>>*/ { /*<<mlString.js 55 4>>*/ if(n_a_&1)
         r_c_+=s_b_;
        n_a_>>=1;
         /*<<mlString.js 57 4>>*/ if(n_a_==0)
          /*<<mlString.js 57 16>>*/ return r_c_;
        s_b_+=s_b_;
        l_e_++;
         /*<<mlString.js 60 4>>*/ if(l_e_==9)
          /*<<mlString.js 60 16>>*/  /*<<mlString.js 61 6>>*/ s_b_.slice(0,1)} /*<<mlString.js 66 0>>*/ }
     /*<<stdlib.js 23 0>>*/ function raw_array_sub_bj_(a_a_,i_b_,l_c_)
     { /*<<stdlib.js 24 8>>*/ var b_e_=new Array(l_c_);
       /*<<stdlib.js 25 2>>*/ for
       ( /*<<stdlib.js 25 12>>*/ var j_d_=0;j_d_<l_c_;j_d_++)
       b_e_[j_d_]=a_a_[i_b_+j_d_];
       /*<<stdlib.js 26 2>>*/ return b_e_ /*<<stdlib.js 27 0>>*/ }
     /*<<mlString.js 70 0>>*/ function caml_subarray_to_string_y_
     (a_a_,i_b_,len_c_)
     { /*<<mlString.js 71 8>>*/ var f_e_=String.fromCharCode;
       /*<<mlString.js 72 2>>*/ if(i_b_==0&&len_c_<=4096&&len_c_==a_a_.length)
        /*<<mlString.js 72 48>>*/ return  /*<<mlString.js 72 55>>*/ f_e_.apply
               (null,a_a_);
       /*<<mlString.js 73 8>>*/ var s_f_=str_d_;
       /*<<mlString.js 74 2>>*/ for
       (;0<len_c_;i_b_+=num_1024_m_,len_c_-=num_1024_m_)
       s_f_+=
        /*<<mlString.js 75 9>>*/ f_e_.apply
        (null,
          /*<<mlString.js 75 24>>*/ raw_array_sub_bj_
          (a_a_,i_b_, /*<<mlString.js 75 43>>*/ Math.min(len_c_,num_1024_m_)));
       /*<<mlString.js 76 2>>*/ return s_f_ /*<<mlString.js 77 0>>*/ }
     /*<<mlString.js 249 0>>*/ function caml_convert_string_to_bytes_ak_(s_a_)
     { /*<<mlString.js 251 2>>*/ if(s_a_.t==2)
       s_a_.c+=
        /*<<mlString.js 252 11>>*/ caml_str_repeat_bb_
        (s_a_.l-s_a_.c.length,"\0");
      else
       s_a_.c=
        /*<<mlString.js 254 10>>*/ caml_subarray_to_string_y_
        (s_a_.c,0,s_a_.c.length);
      s_a_.t=0 /*<<mlString.js 256 0>>*/ }
     /*<<mlString.js 162 0>>*/ function caml_is_ascii_am_(s_a_)
     { /*<<mlString.js 164 2>>*/ if(s_a_.length<24)
        /*<<mlString.js 164 21>>*/ { /*<<mlString.js 166 4>>*/ for
         ( /*<<mlString.js 166 15>>*/ var i_b_=0;i_b_<s_a_.length;i_b_++)
          /*<<mlString.js 166 39>>*/ if
          ( /*<<mlString.js 166 43>>*/ s_a_.charCodeAt(i_b_)>127)
           /*<<mlString.js 166 66>>*/ return false;
         /*<<mlString.js 167 4>>*/ return true}
      else
        /*<<mlString.js 169 4>>*/ return ! /*<<mlString.js 169 12>>*/ /[^\x00-\x7f]/.test
               (s_a_) /*<<mlString.js 170 0>>*/ }
     /*<<mlString.js 115 0>>*/ function caml_utf16_of_utf8_bg_(s_a_)
     { /*<<mlString.js 116 2>>*/ for
       (var
          /*<<mlString.js 116 13>>*/ b_l_=str_d_,
          /*<<mlString.js 116 21>>*/ t_f_=str_d_,
         c_i_,
         c1_h_,
         c2_j_,
         v_b_,
          /*<<mlString.js 116 43>>*/ i_c_=0,
          /*<<mlString.js 116 50>>*/ l_k_=s_a_.length;
        i_c_<
        l_k_;
        i_c_++)
        /*<<mlString.js 116 74>>*/ {c1_h_=
         /*<<mlString.js 117 9>>*/ s_a_.charCodeAt(i_c_);
         /*<<mlString.js 118 4>>*/ if(c1_h_<num_128_e_)
          /*<<mlString.js 118 19>>*/ { /*<<mlString.js 119 6>>*/ for
           ( /*<<mlString.js 119 17>>*/ var j_g_=i_c_+1;
            j_g_<
            l_k_&&
            (c1_h_= /*<<mlString.js 119 43>>*/ s_a_.charCodeAt(j_g_))<
            num_128_e_;
            j_g_++)
            /*<<mlString.js 119 72>>*/ ;
           /*<<mlString.js 120 6>>*/ if(j_g_-i_c_>num_512_af_)
            /*<<mlString.js 120 23>>*/ { /*<<mlString.js 120 25>>*/ t_f_.substr
             (0,1);
            b_l_+=t_f_;
            t_f_=str_d_;
            b_l_+= /*<<mlString.js 120 62>>*/ s_a_.slice(i_c_,j_g_)}
          else
           t_f_+= /*<<mlString.js 121 16>>*/ s_a_.slice(i_c_,j_g_);
           /*<<mlString.js 122 6>>*/ if(j_g_==l_k_)
            /*<<mlString.js 122 18>>*/ break;
          i_c_=j_g_}
        v_b_=1;
         /*<<mlString.js 126 4>>*/ if
         (++i_c_<
          l_k_&&
          ((c2_j_= /*<<mlString.js 126 29>>*/ s_a_.charCodeAt(i_c_))&-64)==
          num_128_e_)
          /*<<mlString.js 126 62>>*/ {c_i_=c2_j_+(c1_h_<<6);
           /*<<mlString.js 128 6>>*/ if(c1_h_<num_224_ah_)
            /*<<mlString.js 128 21>>*/ {v_b_=c_i_-12416;
             /*<<mlString.js 130 8>>*/ if(v_b_<num_128_e_)v_b_=1}
          else
            /*<<mlString.js 131 13>>*/ {v_b_=2;
             /*<<mlString.js 133 8>>*/ if
             (++i_c_<
              l_k_&&
              ((c2_j_= /*<<mlString.js 133 33>>*/ s_a_.charCodeAt(i_c_))&-64)==
              num_128_e_)
              /*<<mlString.js 133 66>>*/ {c_i_=c2_j_+(c_i_<<6);
               /*<<mlString.js 135 10>>*/ if(c1_h_<num_240_R_)
                /*<<mlString.js 135 25>>*/ {v_b_=c_i_-925824;
                 /*<<mlString.js 137 12>>*/ if
                 (v_b_<num_2048_S_||v_b_>=55295&&v_b_<57344)
                 v_b_=2}
              else
                /*<<mlString.js 138 17>>*/ {v_b_=3;
                 /*<<mlString.js 140 14>>*/ if
                 (++i_c_<
                  l_k_&&
                  ((c2_j_= /*<<mlString.js 140 39>>*/ s_a_.charCodeAt(i_c_))&
                   -64)==
                  num_128_e_&&
                  c1_h_<
                  245)
                  /*<<mlString.js 141 31>>*/ {v_b_=c2_j_-63447168+(c_i_<<6);
                   /*<<mlString.js 143 16>>*/ if(v_b_<65536||v_b_>1114111)
                   v_b_=3}}}}}
         /*<<mlString.js 149 4>>*/ if(v_b_<4)
          /*<<mlString.js 149 15>>*/ {i_c_-=v_b_;t_f_+="\ufffd"}
        else
          /*<<mlString.js 152 11>>*/ if(v_b_>65535)
          t_f_+=
           /*<<mlString.js 153 11>>*/ String.fromCharCode
           (55232+(v_b_>>10),num_56320_Q_+(v_b_&1023));
         else
          t_f_+= /*<<mlString.js 155 11>>*/ String.fromCharCode(v_b_);
         /*<<mlString.js 156 4>>*/ if(t_f_.length>num_1024_m_)
          /*<<mlString.js 156 25>>*/ { /*<<mlString.js 156 26>>*/ t_f_.substr
           (0,1);
          b_l_+=t_f_;
          t_f_=str_d_}}
       /*<<mlString.js 158 2>>*/ return b_l_+t_f_ /*<<mlString.js 159 0>>*/ }
     /*<<mlString.js 174 0>>*/ function caml_to_js_string_bf_(s_a_)
     { /*<<mlString.js 175 2>>*/ switch(s_a_.t)
       {case 9: /*<<mlString.js 177 4>>*/ return s_a_.c;
        default:
          /*<<mlString.js 179 4>>*/ caml_convert_string_to_bytes_ak_(s_a_);case 0:
          /*<<mlString.js 181 4>>*/ if
          ( /*<<mlString.js 181 8>>*/ caml_is_ascii_am_(s_a_.c))
           /*<<mlString.js 181 28>>*/ {s_a_.t=9;
            /*<<mlString.js 183 6>>*/ return s_a_.c}
         s_a_.t=8;
        case 8:
          /*<<mlString.js 187 4>>*/ return  /*<<mlString.js 187 11>>*/ caml_utf16_of_utf8_bg_
                 (s_a_.c)
        } /*<<mlString.js 189 0>>*/ }
     /*<<mlString.js 242 0>>*/ function MlString_h_
     (tag_a_,contents_b_,length_c_)
     {this.t=tag_a_;
      this.c=contents_b_;
      this.l=length_c_ /*<<mlString.js 244 0>>*/ }
    MlString_h_.prototype.toString=
    function()
     { /*<<mlString.js 245 41>>*/ return  /*<<mlString.js 245 48>>*/ caml_to_js_string_bf_
              (this) /*<<mlString.js 245 30>>*/ };
     /*<<jslib.js 100 0>>*/ function js_print_stderr_at_(s_a_)
     { /*<<jslib.js 103 2>>*/ if
       ( /*<<jslib.js 103 5>>*/ s_a_.charCodeAt(s_a_.length-1)==10)
       s_a_= /*<<jslib.js 104 8>>*/ s_a_.substr(0,s_a_.length-1);
       /*<<jslib.js 105 8>>*/ var v_b_=joo_global_object_z_.console;
      v_b_&&v_b_.error&& /*<<jslib.js 106 18>>*/ v_b_.error(s_a_) /*<<jslib.js 107 0>>*/ }
     /*<<jslib_js_of_ocaml.js 117 0>>*/ function caml_js_expr_an_(s_a_)
     { /*<<jslib_js_of_ocaml.js 118 2>>*/ js_print_stderr_at_
       ("caml_js_expr: fallback to runtime evaluation");
       /*<<jslib_js_of_ocaml.js 119 2>>*/ return  /*<<jslib_js_of_ocaml.js 119 9>>*/ eval
              ( /*<<jslib_js_of_ocaml.js 119 14>>*/ s_a_.toString()) /*<<jslib_js_of_ocaml.js 119 28>>*/ }
     /*<<mlString.js 80 0>>*/ function caml_utf8_of_utf16_bh_(s_a_)
     { /*<<mlString.js 81 2>>*/ for
       (var
          /*<<mlString.js 81 13>>*/ b_h_=str_d_,
          /*<<mlString.js 81 21>>*/ t_c_=b_h_,
         c_b_,
         d_j_,
          /*<<mlString.js 81 34>>*/ i_f_=0,
          /*<<mlString.js 81 41>>*/ l_i_=s_a_.length;
        i_f_<
        l_i_;
        i_f_++)
        /*<<mlString.js 81 65>>*/ {c_b_=
         /*<<mlString.js 82 8>>*/ s_a_.charCodeAt(i_f_);
         /*<<mlString.js 83 4>>*/ if(c_b_<num_128_e_)
          /*<<mlString.js 83 18>>*/ { /*<<mlString.js 84 6>>*/ for
           ( /*<<mlString.js 84 17>>*/ var j_g_=i_f_+1;
            j_g_<
            l_i_&&
            (c_b_= /*<<mlString.js 84 42>>*/ s_a_.charCodeAt(j_g_))<
            num_128_e_;
            j_g_++)
            /*<<mlString.js 84 71>>*/ ;
           /*<<mlString.js 85 6>>*/ if(j_g_-i_f_>num_512_af_)
            /*<<mlString.js 85 23>>*/ { /*<<mlString.js 85 25>>*/ t_c_.substr
             (0,1);
            b_h_+=t_c_;
            t_c_=str_d_;
            b_h_+= /*<<mlString.js 85 62>>*/ s_a_.slice(i_f_,j_g_)}
          else
           t_c_+= /*<<mlString.js 86 16>>*/ s_a_.slice(i_f_,j_g_);
           /*<<mlString.js 87 6>>*/ if(j_g_==l_i_)
            /*<<mlString.js 87 18>>*/ break;
          i_f_=j_g_}
         /*<<mlString.js 90 4>>*/ if(c_b_<num_2048_S_)
          /*<<mlString.js 90 19>>*/ {t_c_+=
           /*<<mlString.js 91 11>>*/ String.fromCharCode(192|c_b_>>6);
          t_c_+=
           /*<<mlString.js 92 11>>*/ String.fromCharCode(num_128_e_|c_b_&63)}
        else
          /*<<mlString.js 93 11>>*/ if(c_b_<55296||c_b_>=num_57343_U_)
           /*<<mlString.js 93 42>>*/ t_c_+=
           /*<<mlString.js 94 11>>*/ String.fromCharCode
           (num_224_ah_|c_b_>>12,num_128_e_|c_b_>>6&63,num_128_e_|c_b_&63);
         else
           /*<<mlString.js 97 11>>*/ if
           (c_b_>=
            56319||
            i_f_+
            1==
            l_i_||
            (d_j_= /*<<mlString.js 98 20>>*/ s_a_.charCodeAt(i_f_+1))<
            num_56320_Q_||
            d_j_>
            num_57343_U_)
            /*<<mlString.js 98 65>>*/ t_c_+="\xef\xbf\xbd";
          else
            /*<<mlString.js 101 11>>*/ {i_f_++;
            c_b_=(c_b_<<10)+d_j_-56613888;
            t_c_+=
             /*<<mlString.js 104 11>>*/ String.fromCharCode
             (num_240_R_|c_b_>>18,
              num_128_e_|c_b_>>12&63,
              num_128_e_|c_b_>>6&63,
              num_128_e_|c_b_&63)}
         /*<<mlString.js 109 4>>*/ if(t_c_.length>num_1024_m_)
          /*<<mlString.js 109 25>>*/ { /*<<mlString.js 109 26>>*/ t_c_.substr
           (0,1);
          b_h_+=t_c_;
          t_c_=str_d_}}
       /*<<mlString.js 111 2>>*/ return b_h_+t_c_ /*<<mlString.js 112 0>>*/ }
     /*<<mlString.js 285 0>>*/ function caml_js_to_string_ao_(s_a_)
     { /*<<mlString.js 286 10>>*/ var tag_b_=9;
       /*<<mlString.js 287 2>>*/ if
       (! /*<<mlString.js 287 7>>*/ caml_is_ascii_am_(s_a_))
       tag_b_=8,s_a_= /*<<mlString.js 288 41>>*/ caml_utf8_of_utf16_bh_(s_a_);
       /*<<mlString.js 289 2>>*/ return new
              MlString_h_
              (tag_b_,s_a_,s_a_.length) /*<<mlString.js 290 0>>*/ }
     /*<<stdlib.js 125 0>>*/ function caml_raise_with_arg_a__(tag_a_,arg_b_)
     { /*<<stdlib.js 125 42>>*/ throw [0,tag_a_,arg_b_] /*<<stdlib.js 125 63>>*/ }
     /*<<mlString.js 300 0>>*/ function caml_new_string_c_(s_a_)
     { /*<<mlString.js 300 31>>*/ return new MlString_h_(0,s_a_,s_a_.length) /*<<mlString.js 300 66>>*/ }
     /*<<stdlib.js 129 0>>*/ function caml_raise_with_string_ar_
     (tag_a_,msg_b_)
     { /*<<stdlib.js 130 2>>*/ caml_raise_with_arg_a__
       (tag_a_, /*<<stdlib.js 130 28>>*/ caml_new_string_c_(msg_b_)) /*<<stdlib.js 131 0>>*/ }
     /*<<stdlib.js 92 21>>*/ var caml_global_data_f_=[0];
     /*<<stdlib.js 135 0>>*/ function caml_raise_sys_error_g_(msg_a_)
     { /*<<stdlib.js 136 2>>*/ caml_raise_with_string_ar_
       (caml_global_data_f_.Sys_error,msg_a_) /*<<stdlib.js 137 0>>*/ }
     /*<<io.js 346 0>>*/ function caml_ml_flush_a4_(oc_a_)
     { /*<<io.js 347 4>>*/ if(!oc_a_.opened)
        /*<<io.js 347 20>>*/ caml_raise_sys_error_g_
        ("Cannot flush a closed channel");
       /*<<io.js 348 4>>*/ if(oc_a_.buffer==str_d_)
        /*<<io.js 348 24>>*/ return 0;
       /*<<io.js 349 4>>*/ if(oc_a_.output)
        /*<<io.js 350 6>>*/ switch(oc_a_.output.length)
        {case 2:
           /*<<io.js 351 14>>*/ oc_a_.output(oc_a_,oc_a_.buffer);
           /*<<io.js 351 38>>*/ break;
         default: /*<<io.js 352 15>>*/ oc_a_.output(oc_a_.buffer)}
      oc_a_.buffer=str_d_;
       /*<<io.js 356 4>>*/ return 0 /*<<io.js 357 0>>*/ }
     /*<<stdlib.js 171 0>>*/ function caml_invalid_argument_al_(msg_a_)
     { /*<<stdlib.js 172 2>>*/ caml_raise_with_string_ar_
       (caml_global_data_f_.Invalid_argument,msg_a_) /*<<stdlib.js 173 0>>*/ }
     /*<<mlString.js 294 0>>*/ function caml_create_string_l_(len_a_)
     { /*<<mlString.js 295 2>>*/ if(len_a_<0)
        /*<<mlString.js 295 15>>*/ caml_invalid_argument_al_("String.create");
       /*<<mlString.js 296 2>>*/ return new
              MlString_h_
              (len_a_?2:9,str_d_,len_a_) /*<<mlString.js 297 0>>*/ }
     /*<<fs.js 25 15>>*/ var file_inode_as_=0;
     /*<<unix.js 2 0>>*/ function unix_gettimeofday_bk_()
     { /*<<unix.js 3 2>>*/ return  /*<<unix.js 3 9>>*/ new Date().getTime()/
             num_1e3_W_ /*<<unix.js 4 0>>*/ }
     /*<<unix.js 8 0>>*/ function unix_time_A_()
     { /*<<unix.js 9 2>>*/ return  /*<<unix.js 9 9>>*/ Math.floor
              ( /*<<unix.js 9 20>>*/ unix_gettimeofday_bk_()) /*<<unix.js 10 0>>*/ }
     /*<<fs.js 51 0>>*/ function MlFile_i_(content_a_)
     {this.data=content_a_;
      this.inode=file_inode_as_++;
       /*<<fs.js 53 34>>*/ var now_b_= /*<<fs.js 53 36>>*/ unix_time_A_();
      this.atime=now_b_;
      this.mtime=now_b_;
      this.ctime=now_b_ /*<<fs.js 57 0>>*/ }
    MlFile_i_.prototype=
    {truncate:
     function()
      {this.data= /*<<fs.js 60 16>>*/ caml_create_string_l_(0);
        /*<<fs.js 61 4>>*/ this.modified() /*<<fs.js 59 11>>*/ },
     modified:
     function()
      { /*<<fs.js 64 12>>*/ var now_a_= /*<<fs.js 64 14>>*/ unix_time_A_();
       this.atime=now_a_;
       this.mtime=now_a_ /*<<fs.js 63 11>>*/ }};
     /*<<mlString.js 403 0>>*/ function caml_ml_string_length_x_(s_a_)
     { /*<<mlString.js 403 36>>*/ return s_a_.l /*<<mlString.js 403 47>>*/ }
     /*<<fs.js 93 0>>*/ function caml_raise_no_such_file_aq_(name_a_)
     {name_a_=
      name_a_ instanceof MlString_h_
       ? /*<<fs.js 94 36>>*/ name_a_.toString()
       :name_a_;
       /*<<fs.js 95 2>>*/ caml_raise_sys_error_g_
       (name_a_+": No such file or directory") /*<<fs.js 96 0>>*/ }
     /*<<fs.js 23 21>>*/ var caml_current_dir_a2_=str_P_;
     /*<<fs.js 107 0>>*/ function caml_make_path_q_(name_a_)
     {name_a_=
      name_a_ instanceof MlString_h_
       ? /*<<fs.js 108 34>>*/ name_a_.toString()
       :name_a_;
       /*<<fs.js 109 2>>*/ if( /*<<fs.js 109 5>>*/ name_a_.charCodeAt(0)!=47)
       name_a_=caml_current_dir_a2_+name_a_;
      var
        /*<<fs.js 111 11>>*/ comp_e_=
         /*<<fs.js 111 13>>*/ name_a_.split(str_P_),
        /*<<fs.js 112 12>>*/ ncomp_b_=[];
       /*<<fs.js 113 2>>*/ for
       ( /*<<fs.js 113 12>>*/ var i_c_=0;i_c_<comp_e_.length;i_c_++)
        /*<<fs.js 113 36>>*/ switch(comp_e_[i_c_])
        {case "..":
           /*<<fs.js 115 15>>*/ if(ncomp_b_.length>1)
            /*<<fs.js 115 34>>*/ ncomp_b_.pop();
           /*<<fs.js 115 47>>*/ break;
         case ".": /*<<fs.js 116 14>>*/ break;
         case "":
           /*<<fs.js 117 13>>*/ if(ncomp_b_.length==0)
            /*<<fs.js 117 35>>*/ ncomp_b_.push(str_d_);
           /*<<fs.js 117 51>>*/ break;
         default:
           /*<<fs.js 118 13>>*/ ncomp_b_.push(comp_e_[i_c_]);
           /*<<fs.js 118 33>>*/ break}
      ncomp_b_.orig=name_a_;
       /*<<fs.js 122 2>>*/ return ncomp_b_ /*<<fs.js 124 0>>*/ }
     /*<<fs.js 29 0>>*/ function MlDir_j_()
     {this.content={};
      this.inode=file_inode_as_++;
       /*<<fs.js 31 26>>*/ var now_a_= /*<<fs.js 31 28>>*/ unix_time_A_();
      this.atime=now_a_;
      this.mtime=now_a_;
      this.ctime=now_a_ /*<<fs.js 35 18>>*/ }
    MlDir_j_.prototype=
    {exists:
     function(name_a_)
      { /*<<fs.js 37 24>>*/ return this.content[name_a_]?1:0 /*<<fs.js 37 9>>*/ },
     mk:function(name_a_,c_b_){this.content[name_a_]=c_b_ /*<<fs.js 38 5>>*/ },
     get:
     function(name_a_)
      { /*<<fs.js 39 21>>*/ return this.content[name_a_] /*<<fs.js 39 6>>*/ },
     list:
     function()
      { /*<<fs.js 41 10>>*/ var a_a_=[];
        /*<<fs.js 42 4>>*/ for(var n_b_ in this.content)
         /*<<fs.js 43 6>>*/ a_a_.push(n_b_);
        /*<<fs.js 44 4>>*/ return a_a_ /*<<fs.js 40 7>>*/ },
     remove:
     function(name_a_){delete this.content[name_a_] /*<<fs.js 46 9>>*/ }};
     /*<<fs.js 72 18>>*/ var caml_root_dir_s_=new MlDir_j_();
     /*<<fs.js 73 0>>*/ caml_root_dir_s_.mk(str_d_,new MlDir_j_());
     /*<<fs.js 181 0>>*/ function caml_fs_content_w_(path_a_)
     { /*<<fs.js 182 10>>*/ var dir_b_=caml_root_dir_s_;
       /*<<fs.js 183 2>>*/ for
       ( /*<<fs.js 183 11>>*/ var i_c_=0;i_c_<path_a_.length;i_c_++)
        /*<<fs.js 183 32>>*/ { /*<<fs.js 184 4>>*/ if
         (!(dir_b_.exists&& /*<<fs.js 184 23>>*/ dir_b_.exists(path_a_[i_c_])))
          /*<<fs.js 184 45>>*/ caml_raise_no_such_file_aq_(path_a_.orig);
        dir_b_= /*<<fs.js 185 8>>*/ dir_b_.get(path_a_[i_c_])}
       /*<<fs.js 187 2>>*/ return dir_b_ /*<<fs.js 188 0>>*/ }
     /*<<fs.js 256 0>>*/ function caml_sys_is_directory_be_(name_a_)
     {var
        /*<<fs.js 257 11>>*/ path_c_=
         /*<<fs.js 257 13>>*/ caml_make_path_q_(name_a_),
        /*<<fs.js 258 10>>*/ dir_b_=
         /*<<fs.js 258 12>>*/ caml_fs_content_w_(path_c_);
       /*<<fs.js 259 2>>*/ return dir_b_ instanceof MlDir_j_?1:0 /*<<fs.js 260 0>>*/ }
     /*<<mlString.js 303 0>>*/ function caml_string_of_array_bc_(a_a_)
     { /*<<mlString.js 303 36>>*/ return new MlString_h_(4,a_a_,a_a_.length) /*<<mlString.js 303 71>>*/ }
     /*<<mlString.js 259 0>>*/ function caml_convert_string_to_array_aj_(s_a_)
     {var
        /*<<mlString.js 261 8>>*/ a_c_=new Array(s_a_.l),
        /*<<mlString.js 261 28>>*/ b_e_=s_a_.c,
        /*<<mlString.js 261 37>>*/ l_d_=b_e_.length,
        /*<<mlString.js 261 51>>*/ i_b_=0;
       /*<<mlString.js 262 2>>*/ for(;i_b_<l_d_;i_b_++)
       a_c_[i_b_]= /*<<mlString.js 262 28>>*/ b_e_.charCodeAt(i_b_);
       /*<<mlString.js 263 2>>*/ for(l_d_=s_a_.l;i_b_<l_d_;i_b_++)
       a_c_[i_b_]=0;
      s_a_.c=a_c_;
      s_a_.t=4;
       /*<<mlString.js 266 2>>*/ return a_c_ /*<<mlString.js 267 0>>*/ }
     /*<<mlString.js 271 0>>*/ function caml_array_of_string_bl_(s_a_)
     { /*<<mlString.js 272 2>>*/ if(s_a_.t!=4)
        /*<<mlString.js 272 28>>*/ caml_convert_string_to_array_aj_(s_a_);
       /*<<mlString.js 273 2>>*/ return s_a_.c /*<<mlString.js 274 0>>*/ }
     /*<<fs.js 133 0>>*/ function caml_fs_register_a3_(name_a_,content_b_)
     {var
        /*<<fs.js 134 11>>*/ path_f_=
         /*<<fs.js 134 13>>*/ caml_make_path_q_(name_a_),
        /*<<fs.js 135 10>>*/ dir_d_=caml_root_dir_s_;
       /*<<fs.js 136 2>>*/ for
       ( /*<<fs.js 136 11>>*/ var i_k_=0;i_k_<path_f_.length-1;i_k_++)
        /*<<fs.js 136 34>>*/ { /*<<fs.js 137 10>>*/ var d_e_=path_f_[i_k_];
         /*<<fs.js 138 4>>*/ if(! /*<<fs.js 138 9>>*/ dir_d_.exists(d_e_))
          /*<<fs.js 139 6>>*/ dir_d_.mk(d_e_,new MlDir_j_());
        dir_d_= /*<<fs.js 140 10>>*/ dir_d_.get(d_e_);
         /*<<fs.js 141 4>>*/ if(!(dir_d_ instanceof MlDir_j_))
          /*<<fs.js 142 6>>*/ caml_raise_sys_error_g_
          (path_f_.orig+str_file_already_abr_v_)}
       /*<<fs.js 144 8>>*/ var d_e_=path_f_[path_f_.length-1];
       /*<<fs.js 145 2>>*/ if( /*<<fs.js 145 5>>*/ dir_d_.exists(d_e_))
        /*<<fs.js 145 20>>*/ caml_raise_sys_error_g_
        (path_f_.orig+str_file_already_abr_v_);
       /*<<fs.js 146 2>>*/ if(content_b_ instanceof MlDir_j_)
        /*<<fs.js 146 31>>*/ dir_d_.mk(d_e_,content_b_);
      else
        /*<<fs.js 147 7>>*/ if(content_b_ instanceof MlFile_i_)
         /*<<fs.js 147 37>>*/ dir_d_.mk(d_e_,content_b_);
       else
         /*<<fs.js 148 7>>*/ if(content_b_ instanceof MlString_h_)
          /*<<fs.js 148 39>>*/ dir_d_.mk(d_e_,new MlFile_i_(content_b_));
        else
          /*<<fs.js 149 7>>*/ if(content_b_ instanceof Array)
           /*<<fs.js 149 36>>*/ dir_d_.mk
           (d_e_,
            new
             MlFile_i_
             ( /*<<fs.js 149 56>>*/ caml_string_of_array_bc_(content_b_)));
         else
           /*<<fs.js 150 7>>*/ if(content_b_.toString)
            /*<<fs.js 150 28>>*/ dir_d_.mk
            (d_e_,
             new
              MlFile_i_
              ( /*<<fs.js 150 49>>*/ caml_new_string_c_
                ( /*<<fs.js 150 65>>*/ content_b_.toString())));
          else
            /*<<fs.js 151 7>>*/ caml_invalid_argument_al_("caml_fs_register");
       /*<<fs.js 152 2>>*/ return 0 /*<<fs.js 153 0>>*/ }
     /*<<fs.js 192 0>>*/ function caml_sys_file_exists_bd_(name_a_)
     {var
        /*<<fs.js 193 10>>*/ dir_b_=caml_root_dir_s_,
        /*<<fs.js 194 11>>*/ path_d_=
         /*<<fs.js 194 13>>*/ caml_make_path_q_(name_a_),
       auto_load_e_,
       pos_f_;
       /*<<fs.js 197 2>>*/ for
       ( /*<<fs.js 197 11>>*/ var i_c_=0;i_c_<path_d_.length;i_c_++)
        /*<<fs.js 197 32>>*/ { /*<<fs.js 198 4>>*/ if(dir_b_.auto)
          /*<<fs.js 198 17>>*/ {auto_load_e_=dir_b_.auto;pos_f_=i_c_}
         /*<<fs.js 199 4>>*/ if
         (!(dir_b_.exists&& /*<<fs.js 199 23>>*/ dir_b_.exists(path_d_[i_c_])))
          /*<<fs.js 199 45>>*/ return auto_load_e_
                 ? /*<<fs.js 201 15>>*/ auto_load_e_(path_d_,pos_f_)
                 :0;
        dir_b_= /*<<fs.js 205 8>>*/ dir_b_.get(path_d_[i_c_])}
       /*<<fs.js 207 2>>*/ return 1 /*<<fs.js 208 0>>*/ }
     /*<<io.js 34 0>>*/ function caml_sys_open_internal_o_
     (idx_a_,file_b_,flags_c_)
     { /*<<io.js 35 2>>*/ if(caml_global_data_f_.fds===undefined)
       caml_global_data_f_.fds=new Array();
      flags_c_=flags_c_?flags_c_:{};
       /*<<io.js 37 11>>*/ var info_d_={};
      info_d_.file=file_b_;
      info_d_.offset=
      flags_c_.append
       ? /*<<io.js 39 29>>*/ caml_ml_string_length_x_(file_b_.data)
       :0;
      info_d_.flags=flags_c_;
      caml_global_data_f_.fds[idx_a_]=info_d_;
      caml_global_data_f_.fd_last_idx=idx_a_;
       /*<<io.js 43 2>>*/ return idx_a_ /*<<io.js 44 0>>*/ }
     /*<<io.js 45 0>>*/ function caml_sys_open_bm_(name_a_,flags_b_,perms_c_)
     { /*<<io.js 46 8>>*/ var f_d_={};
       /*<<io.js 47 2>>*/ while(flags_b_)
        /*<<io.js 47 14>>*/ { /*<<io.js 48 4>>*/ switch(flags_b_[1])
         {case 0:f_d_.rdonly=1; /*<<io.js 49 25>>*/ break;
          case 1:f_d_.wronly=1; /*<<io.js 50 25>>*/ break;
          case 2:f_d_.append=1; /*<<io.js 51 25>>*/ break;
          case 3:f_d_.create=1; /*<<io.js 52 25>>*/ break;
          case 4:f_d_.truncate=1; /*<<io.js 53 27>>*/ break;
          case 5:f_d_.excl=1; /*<<io.js 54 24>>*/ break;
          case 6:f_d_.binary=1; /*<<io.js 55 25>>*/ break;
          case 7:f_d_.text=1; /*<<io.js 56 23>>*/ break;
          case 8:f_d_.nonblock=1; /*<<io.js 57 27>>*/ break
          }
        flags_b_=flags_b_[2]}
      var
        /*<<io.js 61 12>>*/ name2_h_= /*<<io.js 61 14>>*/ name_a_.toString(),
        /*<<io.js 62 11>>*/ path_j_=
         /*<<io.js 62 13>>*/ caml_make_path_q_(name_a_);
       /*<<io.js 63 2>>*/ if(f_d_.rdonly&&f_d_.wronly)
        /*<<io.js 64 4>>*/ caml_raise_sys_error_g_
        (name2_h_+" : flags Open_rdonly and Open_wronly are not compatible");
       /*<<io.js 65 2>>*/ if(f_d_.text&&f_d_.binary)
        /*<<io.js 66 4>>*/ caml_raise_sys_error_g_
        (name2_h_+" : flags Open_text and Open_binary are not compatible");
       /*<<io.js 67 2>>*/ if
       ( /*<<io.js 67 6>>*/ caml_sys_file_exists_bd_(name_a_))
        /*<<io.js 67 34>>*/ { /*<<io.js 68 4>>*/ if
         ( /*<<io.js 68 8>>*/ caml_sys_is_directory_be_(name_a_))
          /*<<io.js 68 37>>*/ caml_raise_sys_error_g_
          (name2_h_+" : is a directory");
         /*<<io.js 69 4>>*/ if(f_d_.create&&f_d_.excl)
          /*<<io.js 69 28>>*/ caml_raise_sys_error_g_
          (name2_h_+str_file_already_abr_v_);
        var
          /*<<io.js 70 12>>*/ idx_i_=
          caml_global_data_f_.fd_last_idx?caml_global_data_f_.fd_last_idx:0,
          /*<<io.js 71 13>>*/ file_e_=
           /*<<io.js 71 15>>*/ caml_fs_content_w_(path_j_);
         /*<<io.js 72 4>>*/ if(f_d_.truncate)
          /*<<io.js 72 19>>*/ file_e_.truncate();
         /*<<io.js 73 4>>*/ return  /*<<io.js 73 11>>*/ caml_sys_open_internal_o_
                (idx_i_+1,file_e_,f_d_)}
      else
        /*<<io.js 74 9>>*/ if(f_d_.create)
         /*<<io.js 74 23>>*/ { /*<<io.js 75 12>>*/ var
          idx_i_=
           caml_global_data_f_.fd_last_idx?caml_global_data_f_.fd_last_idx:0;
          /*<<io.js 76 4>>*/ caml_fs_register_a3_
          (name_a_, /*<<io.js 76 26>>*/ caml_create_string_l_(0));
          /*<<io.js 77 13>>*/ var
          file_e_=
            /*<<io.js 77 15>>*/ caml_fs_content_w_(path_j_);
          /*<<io.js 78 4>>*/ return  /*<<io.js 78 11>>*/ caml_sys_open_internal_o_
                 (idx_i_+1,file_e_,f_d_)}
       else
         /*<<io.js 80 7>>*/ caml_raise_no_such_file_aq_(name_a_) /*<<io.js 81 0>>*/ }
     /*<<io.js 82 0>>*/ caml_sys_open_internal_o_
     (0,new MlFile_i_( /*<<io.js 82 36>>*/ caml_create_string_l_(0)));
     /*<<io.js 83 0>>*/ caml_sys_open_internal_o_
     (1,new MlFile_i_( /*<<io.js 83 36>>*/ caml_create_string_l_(0)));
     /*<<io.js 84 0>>*/ caml_sys_open_internal_o_
     (2,new MlFile_i_( /*<<io.js 84 36>>*/ caml_create_string_l_(0)));
     /*<<io.js 153 0>>*/ function caml_ml_open_descriptor_in_a5_(fd_a_)
     { /*<<io.js 154 11>>*/ var data_b_=caml_global_data_f_.fds[fd_a_];
       /*<<io.js 155 2>>*/ if(data_b_.flags.wronly)
        /*<<io.js 155 24>>*/ caml_raise_sys_error_g_
        (str_fd_$_+fd_a_+" is writeonly");
       /*<<io.js 157 2>>*/ return {file:data_b_.file,
              offset:data_b_.offset,
              fd:fd_a_,
              opened:true,
              refill:null} /*<<io.js 164 0>>*/ }
     /*<<mlString.js 375 0>>*/ function caml_blit_string_ai_
     (s1_a_,i1_b_,s2_c_,i2_d_,len_e_)
     { /*<<mlString.js 376 2>>*/ if(len_e_==0)
        /*<<mlString.js 376 16>>*/ return 0;
       /*<<mlString.js 377 2>>*/ if
       (i2_d_==0&&(len_e_>=s2_c_.l||s2_c_.t==2&&len_e_>=s2_c_.c.length))
        /*<<mlString.js 378 72>>*/ {s2_c_.c=
        s1_a_.t==4
         ? /*<<mlString.js 380 13>>*/ caml_subarray_to_string_y_
           (s1_a_.c,i1_b_,len_e_)
         :i1_b_==0&&s1_a_.c.length==len_e_
           ?s1_a_.c
           : /*<<mlString.js 381 50>>*/ s1_a_.c.substr(i1_b_,len_e_);
        s2_c_.t=s2_c_.c.length==s2_c_.l?0:2}
      else
        /*<<mlString.js 383 9>>*/ if(s2_c_.t==2&&i2_d_==s2_c_.c.length)
         /*<<mlString.js 383 59>>*/ {s2_c_.c+=
         s1_a_.t==4
          ? /*<<mlString.js 385 13>>*/ caml_subarray_to_string_y_
            (s1_a_.c,i1_b_,len_e_)
          :i1_b_==0&&s1_a_.c.length==len_e_
            ?s1_a_.c
            : /*<<mlString.js 386 50>>*/ s1_a_.c.substr(i1_b_,len_e_);
         s2_c_.t=s2_c_.c.length==s2_c_.l?0:2}
       else
         /*<<mlString.js 388 9>>*/ { /*<<mlString.js 389 4>>*/ if(s2_c_.t!=4)
           /*<<mlString.js 389 31>>*/ caml_convert_string_to_array_aj_(s2_c_);
         var
           /*<<mlString.js 390 11>>*/ c1_g_=s1_a_.c,
           /*<<mlString.js 390 22>>*/ c2_h_=s2_c_.c;
          /*<<mlString.js 391 4>>*/ if(s1_a_.t==4)
           /*<<mlString.js 392 6>>*/ for
           ( /*<<mlString.js 392 17>>*/ var i_f_=0;i_f_<len_e_;i_f_++)
           c2_h_[i2_d_+i_f_]=c1_g_[i1_b_+i_f_];
         else
           /*<<mlString.js 393 9>>*/ { /*<<mlString.js 394 12>>*/ var
            l_i_=
              /*<<mlString.js 394 14>>*/ Math.min(len_e_,c1_g_.length-i1_b_);
            /*<<mlString.js 395 6>>*/ for
            ( /*<<mlString.js 395 17>>*/ var i_f_=0;i_f_<l_i_;i_f_++)
            c2_h_[i2_d_+i_f_]=
             /*<<mlString.js 395 48>>*/ c1_g_.charCodeAt(i1_b_+i_f_);
            /*<<mlString.js 396 6>>*/ for(;i_f_<len_e_;i_f_++)
            c2_h_[i2_d_+i_f_]=0}}
       /*<<mlString.js 399 2>>*/ return 0 /*<<mlString.js 400 0>>*/ }
     /*<<jslib.js 91 0>>*/ function js_print_stdout_bi_(s_a_)
     { /*<<jslib.js 94 2>>*/ if
       ( /*<<jslib.js 94 5>>*/ s_a_.charCodeAt(s_a_.length-1)==10)
       s_a_= /*<<jslib.js 95 8>>*/ s_a_.substr(0,s_a_.length-1);
       /*<<jslib.js 96 8>>*/ var v_b_=joo_global_object_z_.console;
      v_b_&&v_b_.log&& /*<<jslib.js 97 17>>*/ v_b_.log(s_a_) /*<<jslib.js 98 0>>*/ }
     /*<<io.js 95 25>>*/ var caml_ml_out_channels_r_=new Array();
     /*<<io.js 113 0>>*/ function caml_std_output_ba_(chan_a_,s_b_)
     {var
        /*<<io.js 114 10>>*/ str_h_=
         /*<<io.js 114 12>>*/ caml_new_string_c_(s_b_),
        /*<<io.js 115 11>>*/ slen_d_=
         /*<<io.js 115 13>>*/ caml_ml_string_length_x_(str_h_),
        /*<<io.js 116 11>>*/ clen_g_=
         /*<<io.js 116 13>>*/ caml_ml_string_length_x_(chan_a_.file.data),
        /*<<io.js 117 13>>*/ offset_f_=chan_a_.offset;
       /*<<io.js 118 2>>*/ if(offset_f_+slen_d_>=clen_g_)
        /*<<io.js 118 28>>*/ { /*<<io.js 119 16>>*/ var
         new_str_e_=
           /*<<io.js 119 18>>*/ caml_create_string_l_(offset_f_+slen_d_);
         /*<<io.js 120 4>>*/ caml_blit_string_ai_
         (chan_a_.file.data,0,new_str_e_,0,clen_g_);
         /*<<io.js 121 4>>*/ caml_blit_string_ai_
         (str_h_,0,new_str_e_,offset_f_,slen_d_);
        chan_a_.file.data=new_str_e_}
      chan_a_.offset+=slen_d_;
       /*<<io.js 125 2>>*/ chan_a_.file.modified();
       /*<<io.js 126 2>>*/ return 0 /*<<io.js 127 0>>*/ }
     /*<<io.js 129 0>>*/ function caml_ml_open_descriptor_out_ap_(fd_a_)
     {var output_b_;
       /*<<io.js 131 2>>*/ switch(fd_a_)
       {case 1:output_b_=js_print_stdout_bi_; /*<<io.js 132 35>>*/ break;
        case 2:output_b_=js_print_stderr_at_; /*<<io.js 133 35>>*/ break;
        default:output_b_=caml_std_output_ba_}
       /*<<io.js 136 11>>*/ var data_e_=caml_global_data_f_.fds[fd_a_];
       /*<<io.js 137 2>>*/ if(data_e_.flags.rdonly)
        /*<<io.js 137 24>>*/ caml_raise_sys_error_g_
        (str_fd_$_+fd_a_+" is readonly");
       /*<<io.js 138 14>>*/ var
       channel_c_=
        {file:data_e_.file,
         offset:data_e_.offset,
         fd:fd_a_,
         opened:true,
         buffer:str_d_,
         output:output_b_};
      caml_ml_out_channels_r_[channel_c_.fd]=channel_c_;
       /*<<io.js 148 2>>*/ return channel_c_ /*<<io.js 149 0>>*/ }
     /*<<io.js 99 0>>*/ function caml_ml_out_channels_list_a6_()
     { /*<<io.js 100 8>>*/ var l_a_=0;
       /*<<io.js 101 2>>*/ for(var c_b_ in caml_ml_out_channels_r_)
        /*<<io.js 101 36>>*/ if(caml_ml_out_channels_r_[c_b_].opened)
        l_a_=[0,caml_ml_out_channels_r_[c_b_],l_a_];
       /*<<io.js 105 2>>*/ return l_a_ /*<<io.js 106 0>>*/ }
     /*<<stdlib.js 210 0>>*/ function caml_obj_tag_a8_(x_a_)
     { /*<<stdlib.js 210 28>>*/ return x_a_ instanceof Array
              ?x_a_[0]
              :x_a_ instanceof MlString_h_?252:num_1e3_W_ /*<<stdlib.js 210 95>>*/ }
     /*<<stdlib.js 96 0>>*/ function caml_register_global_b_
     (n_a_,v_b_,name_opt_c_)
     {caml_global_data_f_[n_a_+1]=v_b_;
       /*<<stdlib.js 98 2>>*/ if(name_opt_c_)
       caml_global_data_f_[name_opt_c_]=v_b_ /*<<stdlib.js 99 0>>*/ }
     /*<<stdlib.js 76 22>>*/ var caml_named_values_a7_={};
     /*<<mlString.js 278 0>>*/ function caml_bytes_of_string_a1_(s_a_)
     { /*<<mlString.js 279 2>>*/ if((s_a_.t&6)!=0)
        /*<<mlString.js 279 34>>*/ caml_convert_string_to_bytes_ak_(s_a_);
       /*<<mlString.js 280 2>>*/ return s_a_.c /*<<mlString.js 281 0>>*/ }
     /*<<stdlib.js 80 0>>*/ function caml_register_named_value_a$_(nm_a_,v_b_)
     {caml_named_values_a7_
       [ /*<<stdlib.js 81 20>>*/ caml_bytes_of_string_a1_(nm_a_)]=
      v_b_;
       /*<<stdlib.js 82 2>>*/ return 0 /*<<stdlib.js 83 0>>*/ }
    caml_register_global_b_
     (11,
      [num_248_a_,caml_new_string_c_(str_Undefined_recurs_abr_T_),-12],
      str_Undefined_recurs_abr_T_);
    caml_register_global_b_
     (10,
      [num_248_a_,caml_new_string_c_(str_Assert_failure_O_),-11],
      str_Assert_failure_O_);
    caml_register_global_b_
     (9,
      [num_248_a_,caml_new_string_c_(str_Sys_blocked_io___),-10],
      str_Sys_blocked_io___);
    caml_register_global_b_
     (8,
      [num_248_a_,caml_new_string_c_(str_Stack_overflow_ab_),-9],
      str_Stack_overflow_ab_);
    caml_register_global_b_
     (7,
      [num_248_a_,caml_new_string_c_(str_Match_failure_Y_),-8],
      str_Match_failure_Y_);
    caml_register_global_b_
     (6,
      [num_248_a_,caml_new_string_c_(str_Not_found_aa_),-7],
      str_Not_found_aa_);
    caml_register_global_b_
     (5,
      [num_248_a_,caml_new_string_c_(str_Division_by_zero_X_),-6],
      str_Division_by_zero_X_);
    caml_register_global_b_
     (4,
      [num_248_a_,caml_new_string_c_(str_End_of_file_ae_),-5],
      str_End_of_file_ae_);
    caml_register_global_b_
     (3,
      [num_248_a_,caml_new_string_c_(str_Invalid_argument_ag_),-4],
      str_Invalid_argument_ag_);
    caml_register_global_b_
     (2,[num_248_a_,caml_new_string_c_(str_Failure_ad_),-3],str_Failure_ad_);
    caml_register_global_b_
     (1,[num_248_a_,caml_new_string_c_(str_Sys_error_V_),-2],str_Sys_error_V_);
    caml_register_global_b_
     (0,
      [num_248_a_,caml_new_string_c_(str_Out_of_memory_N_),-1],
      str_Out_of_memory_N_);
    caml_fresh_oo_id_n_(0);
    caml_ml_open_descriptor_in_a5_(0);
    caml_ml_open_descriptor_out_ap_(1);
    caml_ml_open_descriptor_out_ap_(2);
    caml_fresh_oo_id_n_(0);
    caml_fresh_oo_id_n_(0);
    caml_fresh_oo_id_n_(0);
    var
     _B_=[0,0],
     _ax_=caml_new_string_c_("Js.Error"),
     _aG_=caml_new_string_c_("_elm_lang$core$Native_Json.succeed"),
     _ay_=caml_new_string_c_("_elm_lang$core$Native_Json.decodePrimitive"),
     _az_=caml_new_string_c_("string"),
     _aB_=caml_new_string_c_("int"),
     _aD_=caml_new_string_c_("float"),
     _aE_=caml_new_string_c_("bool"),
     _aL_=
      caml_new_string_c_
       ("_elm_lang$virtual_dom$Native_VirtualDom.programWithFlags"),
     _aK_=caml_new_string_c_("_elm_lang$virtual_dom$Native_VirtualDom.on"),
     _aI_=caml_new_string_c_("_elm_lang$virtual_dom$Native_VirtualDom.node"),
     _aH_=caml_new_string_c_("_elm_lang$virtual_dom$Native_VirtualDom.text"),
     _aJ_=[0,0,0],
     _aN_=caml_new_string_c_(str_elm_lang_core_N_abr_ac_),
     _aM_=caml_new_string_c_(str_elm_lang_core_N_abr_ac_),
     _aW_=caml_new_string_c_("click"),
     _aQ_=caml_new_string_c_("button"),
     _aP_=caml_new_string_c_("div"),
     _aT_=
      [0,caml_new_string_c_(str_target_Z_),[0,caml_new_string_c_("value"),0]],
     _aU_=
      [0,
       caml_new_string_c_(str_target_Z_),
       [0,caml_new_string_c_("checked"),0]],
     _aV_=caml_new_string_c_("keyCode"),
     _aY_=caml_new_string_c_("+"),
     _aZ_=caml_new_string_c_("-");
    function _C_(_a_){ /*<<?>>*/ _B_[1]=[0,_a_,_B_[1]];return 0}
    var
     _aw_=joo_global_object_z_.Array,
     _D_=[num_248_a_,_ax_,caml_fresh_oo_id_n_(0)],
     _t_=[0,_D_,{}],
     _av_=caml_obj_tag_a8_(_t_)===num_248_a_?_t_:_t_[1];
    caml_register_named_value_a$_(caml_new_string_c_("jsError"),_av_);
    _C_
     (function(_a_)
       { /*<<?>>*/ return _a_[1]===_D_
                ?[0,caml_js_to_string_ao_(_a_[2].toString())]
                :0});
    _C_
     (function(_a_)
       { /*<<?>>*/ return _a_ instanceof _aw_
                ?0
                :[0,caml_js_to_string_ao_(_a_.toString())]});
    function _k_(_a_,_b_){ /*<<?>>*/ return caml_js_expr_an_(_a_)(_b_)}
    function _E_(_a_,_b_,_c_,_d_)
     { /*<<?>>*/ return A3(caml_js_expr_an_(_a_),_b_,_c_,_d_)}
    function _p_(_a_){ /*<<?>>*/ return _k_(_ay_,_a_)}
    var _aA_=_p_(_az_),_aC_=_p_(_aB_);
    _p_(_aD_);
    var _aF_=_p_(_aE_);
    function _F_(_a_,_b_)
     { /*<<?>>*/ return A2(_elm_lang$core$Native_Json.decodeField,_a_,_b_)}
    function _G_(_a_,_b_)
     {var _d_=_b_,_c_=_a_;
      for(;;)
       {if(_c_){var _e_=_c_[2],_d_=_F_(_d_,_c_[1]),_c_=_e_;continue}
        return _d_}}
    var _H_=_k_(_aM_,0),_aO_=_k_(_aN_,0);
    function _u_(_a_){ /*<<?>>*/ return _k_(_aH_,_a_)}
    function _I_(_a_,_b_,_c_){ /*<<?>>*/ return _E_(_aI_,_a_,_b_,_c_)}
    function _J_(_a_,_b_){ /*<<?>>*/ return _I_(_aP_,_a_,_b_)}
    function _K_(_a_,_b_){ /*<<?>>*/ return _I_(_aQ_,_a_,_b_)}
    _G_(_aT_,_aA_);
    _G_(_aU_,_aF_);
    _F_(_aV_,_aC_);
    function _L_(_a_){ /*<<?>>*/ return _E_(_aK_,_aW_,_aJ_,_k_(_aG_,_a_))}
    var _M_={};
    function _aX_(_a_)
     {var
       _b_=[0,_u_(_aY_),0],
       _e_=[0,_K_([0,_L_(0),0],_b_),0],
       _f_=[0,_J_(0,[0,_u_(caml_new_string_c_(str_d_+_a_)),0]),_e_],
       _g_=[0,_u_(_aZ_),0];
      return _J_(0,[0,_K_([0,_L_(1),0],_g_),_f_])}
    var _a0_=0;
    function _aR_(_a_){ /*<<?>>*/ return _aO_}
    function _aS_(_a_,_b_){var _c_=0===_a_?_b_+1|0:_b_-1|0;return [0,_c_,_H_]}
    _elm_lang$core$Native_Platform.addPublicModule
     (_M_,
      "Main",
      {"main":
       _k_
        (_aL_,
         [0,function(_a_){ /*<<?>>*/ return [0,_a0_,_H_]},_aS_,_aR_,_aX_])});
    _M_.fullscreen();
    function _au_(_a_)
     {var _b_=_a_;
      for(;;)
       {if(_b_)
         {var _c_=_b_[2],_d_=_b_[1];
          try {caml_ml_flush_a4_(_d_)}catch(_f_){}
          var _b_=_c_;
          continue}
        return 0}}
    _au_(caml_ml_out_channels_list_a6_(0));
    return /*<<?>>*/ }
  (function(){return this}()));
