function unittest_trig_basis_eval(varargin)
% UNITTEST_TRIG_BASIS_EVAL Test the TRIG_BASIS_EVAL function.
%
% Example (<a href="matlab:run_example unittest_trig_basis_eval">run</a>)
%   unittest_trig_basis_eval
%
% See also TRIG_BASIS_EVAL, MUNIT_RUN_TESTSUITE 

%   Elmar Zander
%   Copyright 2015, Inst. of Scientific Computing
%
%   This program is free software: you can redistribute it and/or modify it
%   under the terms of the GNU General Public License as published by the
%   Free Software Foundation, either version 3 of the License, or (at your
%   option) any later version. 
%   See the GNU General Public License for more details. You should have
%   received a copy of the GNU General Public License along with this
%   program.  If not, see <http://www.gnu.org/licenses/>.

munit_set_function( 'trig_basis_eval' );

a_k = [0.2; 0.3];
wp_k_l = [2, 3, 4, 5; 8, 9, 10, 11];
x_l_i = [ 60, 70, 80; 90, 100, 110];

y_k_i_ex = [
    0.2 * sin(2*60+3)*sin(4*90+5), ...
    0.2 * sin(2*70+3)*sin(4*100+5), ...
    0.2 * sin(2*80+3)*sin(4*110+5);
    0.3 * sin(8*60+9)*sin(10*90+11), ...
    0.3 * sin(8*70+9)*sin(10*100+11), ...
    0.3 * sin(8*80+9)*sin(10*110+11)
    ];
[y_k_i] = trig_basis_eval(a_k, wp_k_l, x_l_i);
assert_equals(y_k_i, y_k_i_ex, 'eval');

[y_k_i] = trig_basis_eval(a_k', wp_k_l, x_l_i);
assert_equals(y_k_i, y_k_i_ex, 'eval');
