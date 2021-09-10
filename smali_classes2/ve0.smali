.class public final Lve0;
.super Ltd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltd0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lvd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvd0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvd0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvd0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ltd0;-><init>()V

    .line 2
    iput-object p1, p0, Lve0;->a:Lvd0;

    return-void
.end method


# virtual methods
.method protected d(Lwd0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lve0$a;

    invoke-direct {v0, p1}, Lve0$a;-><init>(Lwd0;)V

    .line 2
    invoke-interface {p1, v0}, Lwd0;->f(Lbe0;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lve0;->a:Lvd0;

    invoke-interface {p1, v0}, Lvd0;->a(Lud0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lve0$a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
