.class Lcom/zjsoft/admob/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjsoft/admob/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/admob/e;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lcom/zjsoft/admob/e;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/e;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/e$a;->c:Lcom/zjsoft/admob/e;

    iput-object p2, p0, Lcom/zjsoft/admob/e$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zjsoft/admob/e$a;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zjsoft/admob/e$a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/zjsoft/admob/e$a$a;

    invoke-direct {v1, p0, p1}, Lcom/zjsoft/admob/e$a$a;-><init>(Lcom/zjsoft/admob/e$a;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
