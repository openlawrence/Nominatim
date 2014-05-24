; nominclature for lawrence
select getorcreate_word_id('mass');
select getorcreate_word_id('mass st');

select word_id  from word where word_token = 'mass';

#update search_name set name_vector = (name_vector + where nameaddress_vector @> ARRAY[


select word_id, word, word_token  from word where word_token like 'mass%' ;
 word_id | word |         word_token         
   12980 |      | mass
  137723 |      | mass st

select * from search_name where name_vector @> ARRAY[12980];

