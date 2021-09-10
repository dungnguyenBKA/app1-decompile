.class Lcom/zjsoft/admob/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/admob/a;->c(Landroid/content/Context;ZLcom/zjsoft/admob/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zjsoft/admob/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/zjsoft/admob/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/a$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjsoft/admob/a$a;->b:Lcom/zjsoft/admob/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/zjsoft/admob/a;->a(Z)Z

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/zjsoft/admob/a;->b(Z)Z

    .line 3
    iget-object v0, p0, Lcom/zjsoft/admob/a$a;->a:Landroid/content/Context;

    .line 4
    :try_start_0
    invoke-static {v0}, Lcc0;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setAppMuted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjsoft/admob/a$a;->b:Lcom/zjsoft/admob/d;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lcom/zjsoft/admob/d;->a(Z)V

    :cond_1
    return-void
.end method
