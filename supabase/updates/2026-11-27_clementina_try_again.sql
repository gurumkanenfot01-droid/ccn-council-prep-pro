-- Dabok Clementina Moenmi: another chance (asked by the administrator).
-- ONCE: she can collect her code on the claim page again, any device that
-- holds her code is signed out, and an unfinished face registration (not
-- approved) is cleared so she can register again. Her code stays the same.
-- Safe to run again (marked in her note).
set lock_timeout = '10s';

update public.exam_candidates
   set claimed_at = null, login_device = null, login_seen_at = null,
       face_status = case when face_status = 'approved' then face_status else 'none' end,
       face_descriptor = case when face_status = 'approved' then face_descriptor end,
       face_photo = case when face_status = 'approved' then face_photo end,
       enrolled_at = case when face_status = 'approved' then enrolled_at end,
       note = trim(note || ' [another chance 9 Nov]')
 where specialty = 'council' and full_name ilike '%clementina%' and full_name ilike '%dabok%'
   and note not like '%[another chance 9 Nov]%';

select 'Clementina' as item,
  coalesce((select string_agg(full_name || ': can collect code again = ' || (claimable and claimed_at is null)
                              || ', face ' || face_status || ', no face check = ' || no_face, '; ')
            from public.exam_candidates where specialty = 'council' and full_name ilike '%clementina%'), 'not found') as value;
