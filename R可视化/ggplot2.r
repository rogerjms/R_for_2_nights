small=diamonds[sample(nrow(diamonds),1000),]
head(small)
p = ggplot(data=small,mapping=aes(x=carat,y=price))
p+geom_point()
p <- ggplot(data=small, mapping=aes(x=carat, y=price, shape=cut))
p+geom_point()
p <- ggplot(data=small, mapping=aes(x=carat, y=price, shape=cut, colour=color))
p+geom_point()
#���ζ���Geometric��
#��ͬ�ļ��ζ���Ҫ������Ի���Щآͬ����Щ����Ҳ�����ڼ��ζ���ӳ��ʱ�ṩ

p <- ggplot(small)
p+geom_point(aes(x=carat, y=price, shape=cut, colour=color))
#ggplot2֧��ͼ�㣬��ͨ����آͬ��ͼ���й��õ�ӳ���ṩ��ggplot��������ĳһ���ζ������Ҫ��ӳ������ṩ��geom_xxx������
#ֱ��ͼ
ggplot(small)+geom_histogram(aes(x=price))
ggplot(small)+geom_histogram(aes(x=price, fill=cut))#�����ɫ
ggplot(small)+geom_histogram(aes(x=price, fill=cut), position="dodge")
ggplot(small)+geom_histogram(aes(x=price, fill=cut), position="fill")
#��״ͼ
ggplot(small)+geom_bar(aes(x=clarity))
ggplot()+geom_bar(aes(x=c(LETTERS[1:3]),y=1:3), stat="identity")
#�ܶȺ���
ggplot(small)+geom_density(aes(x=price, colour=cut))
ggplot(small)+geom_density(aes(x=price,fill=clarity))
#��ʽͼ
ggplot(small)+geom_boxplot(aes(x=cut, y=price,fill=color))
#���
#ǰ�������Ѿ������ˣ���ͼ��������ӳ�䣬آ����ӳ�䵽آͬ�ļ��ζ����ϣ�����ӳ�����ͼ������
ggplot(small)+geom_point(aes(x=carat, y=price, shape=cut, colour=color))+scale_y_log10()+scale_colour_manual(values=rainbow(7))
#ͳ�Ʊ任��Statistics��
ggplot(small, aes(x=carat, y=price))+geom_point()+scale_y_log10()+stat_smooth()
#ע�����aes���ṩ�Ĳ�������ͨ��ggplot�ṩ����آ���ṩ��geom_point����Ϊggplot��Ĳ������൱��ȫ�ֱ�����geom_point()��stat_smooth()��֪��x,y��ӳ�䣬���ֻ�ṩ��geom_point()�����൱���Ǿֲ�������geom_point֪������ӳ�䣬��stat_smoothآ֪������Ȼ���ٸ�stat_smoothҲ�ṩx,y��ӳ�䣬آ�����õ�ӳ�䣬�����ṩ��ggplot�á�




#����ϵͳ
#����ϵͳ���������ᣬ����މ�б任������XY�ᷭת���ѿ�������ͼ�����ת�������������ǵĸ�������
ggplot(small)+geom_bar(aes(x=cut, fill=cut))+coord_flip()
ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar(theta="y")
#��ͼ
#��Ҳ��Ϊʲô�Yǰ���ܳ���ͼ�λ���ʱû���ἰ��ͼ��ԭ�򣬱�ͼʵ���Ͼ�����״ͼ��ֻآ����ʹ�ü�������ѣ���״ͼ�ĸ߶ȣ���Ӧ�ڱ�ͼ�Ļ��ȣ���ͼ��آ�Ƽ�����Ϊ������۾��Ƚϻ��ȵ�������آ�ϱȽϸ߶ȣ���״ͼ��
ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar()
#õ��ͼ
ggplot(small)+geom_bar(aes(x=clarity, fill=cut))+coord_polar()
#�����й�������ͼ
ggplot(small, aes(x=carat, y=price))+geom_point(aes(colour=cut))+scale_y_log10() +facet_wrap(~cut)+stat_smooth()
#�������
#ͨ��ggplot��ͼ�Y�����ǿ��ܻ���Ҫ��ͼމ�ж��ƣ���title, xlab, ylab��Щ��Ƶ��Ҫ�õ��ģ���آ��˵��ggplot2�ṩ��ggtitle(), xlab()��ylab()��ʵ�֡�
#ggplot2�ṩһЩ�Ѿ�д�õ����⣬����theme_grey()ΪĬ�����⣬�Ҿ����õ�theme_bw()Ϊ��ɫ���������⣬����theme_classic()���⣬��R�Ļ�����ͼ��������

