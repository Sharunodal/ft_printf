/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: arissane <arissane@student.hive.fi>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/18 10:44:33 by arissane          #+#    #+#             */
/*   Updated: 2024/05/23 10:58:41 by arissane         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdlib.h>
# include <stdarg.h>

int	ft_putchar_printf(char c);
int	ft_putstr_printf(char *str);
int	ft_nbr_len_printf(long val, char c);
int	ft_putptr_printf(size_t argval);
int	ft_puthex_printf(size_t argval, char c);
int	ft_putnbr_printf(long argval, char c);
int	ft_printf(const char *str, ...);

#endif
