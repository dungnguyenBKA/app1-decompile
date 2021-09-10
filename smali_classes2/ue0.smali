.class abstract Lue0;
.super Ltd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ltd0<",
        "TU;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Ltd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltd0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltd0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ltd0;-><init>()V

    .line 2
    iput-object p1, p0, Lue0;->a:Ltd0;

    return-void
.end method
