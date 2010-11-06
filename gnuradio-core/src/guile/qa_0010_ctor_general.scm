;;;
;;; Copyright 2010 Free Software Foundation, Inc.
;;;
;;; This file is part of GNU Radio
;;;
;;; GNU Radio is free software; you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3, or (at your option)
;;; any later version.
;;;
;;; GNU Radio is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;

(use-modules (gnuradio core))
(use-modules (oop goops))

(load-from-path "srfi/srfi-64")		; unit test library

;;; Add test code for all constructors in these files
;;;
;;; ./general/gr_additive_scrambler_bb.h
;;; ./general/gr_agc2_cc.h
;;; ./general/gr_agc2_ff.h
;;; ./general/gr_agc_cc.h
;;; ./general/gr_agc_ff.h
;;; ./general/gr_align_on_samplenumbers_ss.h
;;; ./general/gr_bin_statistics_f.h
;;; ./general/gr_binary_slicer_fb.h
;;; ./general/gr_bytes_to_syms.h
;;; ./general/gr_char_to_float.h
;;; ./general/gr_check_counting_s.h
;;; ./general/gr_check_lfsr_32k_s.h
;;; ./general/gr_clock_recovery_mm_cc.h
;;; ./general/gr_clock_recovery_mm_ff.h
;;; ./general/gr_complex_to_interleaved_short.h
;;; ./general/gr_complex_to_xxx.h
;;; ./general/gr_conjugate_cc.h
;;; ./general/gr_constellation_decoder_cb.h
;;; ./general/gr_copy.h
;;; ./general/gr_correlate_access_code_bb.h
;;; ./general/gr_costas_loop_cc.h
;;; ./general/gr_cpfsk_bc.h
;;; ./general/gr_ctcss_squelch_ff.h
;;; ./general/gr_decode_ccsds_27_fb.h
;;; ./general/gr_deinterleave.h
;;; ./general/gr_delay.h
;;; ./general/gr_descrambler_bb.h
;;; ./general/gr_diff_decoder_bb.h
;;; ./general/gr_diff_encoder_bb.h
;;; ./general/gr_diff_phasor_cc.h
;;; ./general/gr_dpll_bb.h
;;; ./general/gr_encode_ccsds_27_bb.h
;;; ./general/gr_fake_channel_coder_pp.h
;;; ./general/gr_feedforward_agc_cc.h
;;; ./general/gr_fft_vcc.h
;;; ./general/gr_fft_vcc_fftw.h
;;; ./general/gr_fft_vfc.h
;;; ./general/gr_fll_band_edge_cc.h
;;; ./general/gr_float_to_char.h
;;; ./general/gr_float_to_complex.h
;;; ./general/gr_float_to_short.h
;;; ./general/gr_float_to_uchar.h
;;; ./general/gr_fmdet_cf.h
;;; ./general/gr_framer_sink_1.h
;;; ./general/gr_frequency_modulator_fc.h
;;; ./general/gr_glfsr_source_b.h
;;; ./general/gr_glfsr_source_f.h
;;; ./general/gr_head.h
;;; ./general/gr_interleave.h
;;; ./general/gr_interleaved_short_to_complex.h
;;; ./general/gr_iqcomp_cc.h
;;; ./general/gr_keep_one_in_n.h
;;; ./general/gr_kludge_copy.h
;;; ./general/gr_lfsr_32k_source_s.h
;;; ./general/gr_lms_dfe_cc.h
;;; ./general/gr_lms_dfe_ff.h
;;; ./general/gr_map_bb.h
;;; ./general/gr_mpsk_receiver_cc.h
;;; ./general/gr_nlog10_ff.h
;;; ./general/gr_nop.h
;;; ./general/gr_null_sink.h
;;; ./general/gr_null_source.h
;;; ./general/gr_ofdm_bpsk_demapper.h
;;; ./general/gr_ofdm_cyclic_prefixer.h
;;; ./general/gr_ofdm_demapper_vcb.h
;;; ./general/gr_ofdm_frame_acquisition.h
;;; ./general/gr_ofdm_frame_sink.h
;;; ./general/gr_ofdm_insert_preamble.h
;;; ./general/gr_ofdm_mapper_bcv.h
;;; ./general/gr_ofdm_sampler.h
;;; ./general/gr_pa_2x2_phase_combiner.h
;;; ./general/gr_packet_sink.h
;;; ./general/gr_peak_detector2_fb.h
;;; ./general/gr_phase_modulator_fc.h
;;; ./general/gr_pll_carriertracking_cc.h
;;; ./general/gr_pll_freqdet_cf.h
;;; ./general/gr_pll_refout_cc.h
;;; ./general/gr_pn_correlator_cc.h
;;; ./general/gr_probe_avg_mag_sqrd_c.h
;;; ./general/gr_probe_avg_mag_sqrd_cf.h
;;; ./general/gr_probe_avg_mag_sqrd_f.h
;;; ./general/gr_probe_density_b.h
;;; ./general/gr_probe_mpsk_snr_c.h
;;; ./general/gr_probe_signal_f.h
;;; ./general/gr_pwr_squelch_cc.h
;;; ./general/gr_pwr_squelch_ff.h
;;; ./general/gr_quadrature_demod_cf.h
;;; ./general/gr_rail_ff.h
;;; ./general/gr_regenerate_bb.h
;;; ./general/gr_repeat.h
;;; ./general/gr_rms_cf.h
;;; ./general/gr_rms_ff.h
;;; ./general/gr_scrambler_bb.h
;;; ./general/gr_short_to_float.h
;;; ./general/gr_simple_correlator.h
;;; ./general/gr_simple_framer.h
;;; ./general/gr_simple_squelch_cc.h
;;; ./general/gr_skiphead.h
;;; ./general/gr_squash_ff.h
;;; ./general/gr_squelch_base_cc.h
;;; ./general/gr_squelch_base_ff.h
;;; ./general/gr_stream_mux.h
;;; ./general/gr_stream_to_streams.h
;;; ./general/gr_stream_to_vector.h
;;; ./general/gr_streams_to_stream.h
;;; ./general/gr_streams_to_vector.h
;;; ./general/gr_stretch_ff.h
;;; ./general/gr_test.h
;;; ./general/gr_threshold_ff.h
;;; ./general/gr_throttle.h
;;; ./general/gr_uchar_to_float.h
;;; ./general/gr_unpack_k_bits_bb.h
;;; ./general/gr_vco_f.h
;;; ./general/gr_vector_to_stream.h
;;; ./general/gr_vector_to_streams.h
;;; ./general/gr_wavelet_ff.h
;;; ./general/gr_wvps_ff.h
