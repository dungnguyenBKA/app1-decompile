.class final Lcom/wcl/notchfit/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wcl/notchfit/a;->a(Landroid/app/Activity;Lya0;Lcb0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcb0;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wcl/notchfit/a$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wcl/notchfit/a$a;->b:Lcb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxa0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lxa0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wcl/notchfit/a$a;->a:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 5
    aget v0, v1, v0

    invoke-virtual {p1}, Lxa0;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lxa0;->e(Z)V

    .line 7
    invoke-virtual {p1, v0}, Lxa0;->g(I)V

    .line 8
    invoke-virtual {p1, v0}, Lxa0;->f(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/wcl/notchfit/a$a;->b:Lcb0;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p1}, Lcb0;->a(Lxa0;)V

    :cond_1
    return-void
.end method
