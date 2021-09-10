.class final Linshot/collage/adconfig/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb0$a;


# instance fields
.field final synthetic a:Linshot/collage/adconfig/j;


# direct methods
.method constructor <init>(Linshot/collage/adconfig/j;)V
    .locals 0

    iput-object p1, p0, Linshot/collage/adconfig/n;->a:Linshot/collage/adconfig/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    const-string v0, "AD"

    const/4 v1, 0x0

    const-string v2, "context"

    if-nez p1, :cond_1

    .line 1
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v1, "\u5168\u5c4f\u5e7f\u544a\u5c55\u793a\u5931\u8d25-"

    .line 2
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linshot/collage/adconfig/n;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": \u5185\u90e8\u9519\u8bef"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 6
    iget-object v3, p0, Linshot/collage/adconfig/n;->a:Linshot/collage/adconfig/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-static {p1, v3, v4, v5}, Linshot/collage/adconfig/d;->h(Landroid/content/Context;Linshot/collage/adconfig/j;J)V

    .line 8
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_2

    const-string v1, "\u5168\u5c4f\u5e7f\u544a\u5c55\u793a\u6210\u529f-"

    .line 9
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linshot/collage/adconfig/n;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 10
    :cond_2
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1
.end method
