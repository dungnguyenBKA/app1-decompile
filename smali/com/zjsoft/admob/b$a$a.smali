.class Lcom/zjsoft/admob/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/admob/b$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/zjsoft/admob/b$a;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/b$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/b$a$a;->c:Lcom/zjsoft/admob/b$a;

    iput-boolean p2, p0, Lcom/zjsoft/admob/b$a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zjsoft/admob/b$a$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/b$a$a;->c:Lcom/zjsoft/admob/b$a;

    iget-object v1, v0, Lcom/zjsoft/admob/b$a;->c:Lcom/zjsoft/admob/b;

    iget-object v0, v0, Lcom/zjsoft/admob/b$a;->a:Landroid/app/Activity;

    iget-object v2, v1, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-static {v1, v0, v2}, Lcom/zjsoft/admob/b;->l(Lcom/zjsoft/admob/b;Landroid/app/Activity;Ljb0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zjsoft/admob/b$a$a;->c:Lcom/zjsoft/admob/b$a;

    iget-object v1, v0, Lcom/zjsoft/admob/b$a;->b:Lub0$a;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/zjsoft/admob/b$a;->a:Landroid/app/Activity;

    const-string v2, "AdmobBanner:Admob has not been inited or is initing"

    invoke-static {v2, v1, v0}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
