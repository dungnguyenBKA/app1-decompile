.class Ldev/drojian/rate/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/drojian/rate/a;->h(Landroid/content/Context;Lbd0;Ldd0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lbd0;

.field final synthetic d:Ldd0;

.field final synthetic e:Ldev/drojian/rate/a;


# direct methods
.method constructor <init>(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;Ldd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/drojian/rate/a$b;->e:Ldev/drojian/rate/a;

    iput-object p2, p0, Ldev/drojian/rate/a$b;->b:Landroid/content/Context;

    iput-object p3, p0, Ldev/drojian/rate/a$b;->c:Lbd0;

    iput-object p4, p0, Ldev/drojian/rate/a$b;->d:Ldd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ldev/drojian/rate/a$b;->e:Ldev/drojian/rate/a;

    invoke-static {p1}, Ldev/drojian/rate/a;->a(Ldev/drojian/rate/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Ldev/drojian/rate/a$b;->e:Ldev/drojian/rate/a;

    invoke-static {p1}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Ldev/drojian/rate/a$b;->b:Landroid/content/Context;

    iget-object v0, p0, Ldev/drojian/rate/a$b;->c:Lbd0;

    invoke-static {p1, v0}, Ldev/drojian/rate/c;->b(Landroid/content/Context;Lbd0;)V

    .line 4
    iget-object p1, p0, Ldev/drojian/rate/a$b;->d:Ldd0;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ldd0;->b()V

    .line 6
    iget-object p1, p0, Ldev/drojian/rate/a$b;->d:Ldd0;

    const-string v0, "AppRate_new"

    const-string v1, "Like"

    const-string v2, "Review"

    invoke-interface {p1, v0, v1, v2}, Ldd0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Ldev/drojian/rate/a$b;->e:Ldev/drojian/rate/a;

    invoke-static {p1}, Ldev/drojian/rate/a;->a(Ldev/drojian/rate/a;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/drojian/rate/a$b;->e:Ldev/drojian/rate/a;

    invoke-static {p1}, Ldev/drojian/rate/a;->a(Ldev/drojian/rate/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Ldev/drojian/rate/a$b;->e:Ldev/drojian/rate/a;

    invoke-static {p1}, Ldev/drojian/rate/a;->a(Ldev/drojian/rate/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Ldev/drojian/rate/a$b;->d:Ldd0;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Ldd0;->d()V

    :cond_2
    :goto_0
    return-void
.end method
