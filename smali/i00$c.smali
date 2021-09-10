.class Li00$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li00;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Li00;


# direct methods
.method constructor <init>(Li00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li00$c;->b:Li00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Li00$c;->b:Li00;

    invoke-static {v0}, Li00;->b(Li00;)Lj00;

    move-result-object v0

    invoke-virtual {v0}, Lj00;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Initialization marker file was not properly removed."

    invoke-virtual {v1, v2}, Laz;->i(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Problem encountered deleting Crashlytics initialization marker."

    .line 5
    invoke-virtual {v1, v2, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method
