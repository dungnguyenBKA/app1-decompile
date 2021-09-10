.class final Lve$b;
.super Lpe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpe<",
        "Lve$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpe;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lye;
    .locals 1

    .line 1
    new-instance v0, Lve$a;

    invoke-direct {v0, p0}, Lve$a;-><init>(Lve$b;)V

    return-object v0
.end method

.method d(ILjava/lang/Class;)Lve$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lve$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lpe;->b()Lye;

    move-result-object v0

    check-cast v0, Lve$a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lve$a;->b(ILjava/lang/Class;)V

    return-object v0
.end method
