.class Lyf$a;
.super Lel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyf;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lel<",
        "Lyf$b<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lyf;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lel;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lyf$b;

    .line 2
    invoke-virtual {p1}, Lyf$b;->b()V

    return-void
.end method
