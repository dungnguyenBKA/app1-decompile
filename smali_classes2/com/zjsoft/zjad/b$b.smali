.class Lcom/zjsoft/zjad/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/zjad/b;->m(Landroid/app/Activity;Lcom/zjsoft/zjad/d;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/zjsoft/zjad/d;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/zjsoft/zjad/b;


# direct methods
.method constructor <init>(Lcom/zjsoft/zjad/b;Lcom/zjsoft/zjad/d;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/zjad/b$b;->d:Lcom/zjsoft/zjad/b;

    iput-object p2, p0, Lcom/zjsoft/zjad/b$b;->b:Lcom/zjsoft/zjad/d;

    iput-object p3, p0, Lcom/zjsoft/zjad/b$b;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "android.intent.action.VIEW"

    .line 1
    iget-object v0, p0, Lcom/zjsoft/zjad/b$b;->d:Lcom/zjsoft/zjad/b;

    iget-object v0, v0, Lcom/zjsoft/zjad/b;->g:Lub0$a;

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zjsoft/zjad/b$b;->b:Lcom/zjsoft/zjad/d;

    iget-object v2, v2, Lcom/zjsoft/zjad/d;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.vending"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v2, p0, Lcom/zjsoft/zjad/b$b;->c:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zjsoft/zjad/b$b;->b:Lcom/zjsoft/zjad/d;

    iget-object v2, v2, Lcom/zjsoft/zjad/d;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/zjsoft/zjad/b$b;->c:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/zjsoft/zjad/b$b;->d:Lcom/zjsoft/zjad/b;

    iget-object p1, p1, Lcom/zjsoft/zjad/b;->g:Lub0$a;

    iget-object v0, p0, Lcom/zjsoft/zjad/b$b;->c:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->c(Landroid/content/Context;)V

    .line 12
    iget-object p1, p0, Lcom/zjsoft/zjad/b$b;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/zjsoft/zjad/b$b;->b:Lcom/zjsoft/zjad/d;

    iget-object v0, v0, Lcom/zjsoft/zjad/d;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcc0;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
