/*
 * https://github.com/Epicurius
 * 
 * Created: 2022/01/30 11:03:51 Niklas Neronin
 * Updated: 2022/01/31 15:33:44 Niklas Neronin
 */

#ifndef LIBASM_H
# define LIBASM_H

size_t		ft_strlen(const char *s);
void		*ft_memset(void *s, int c, size_t n);
void		*ft_memcpy(void *dst, void *src, size_t n);
void		*ft_bzero(void *s, size_t n);
char		*ft_strcat(char *dst, const char *src);
int			ft_isalpha(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
char		*ft_strdup(const char *s);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);
void		ft_putstr(char const *s);

#endif