.class Lad0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lad0;->c(Landroid/content/Context;Ljava/lang/String;Lyc0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lyc0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lyc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad0$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lad0$a;->b:Lyc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/vungle/warren/error/VungleException;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lad0;->a(Z)Z

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    iget-object v2, p0, Lad0$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lad0$a;->b:Lyc0;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Lyc0;->a(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lad0;->a(Z)Z

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lad0;->b(Z)Z

    .line 3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    iget-object v2, p0, Lad0$a;->a:Landroid/content/Context;

    const-string v3, "Vungle init success"

    invoke-virtual {v1, v2, v3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lad0$a;->b:Lyc0;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lyc0;->a(Z)V

    :cond_0
    return-void
.end method
