.class Lw$a;
.super Lw$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lw$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lw$c;Lw$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;",
            "Lw$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lw$e;-><init>(Lw$c;Lw$c;)V

    return-void
.end method


# virtual methods
.method b(Lw$c;)Lw$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;)",
            "Lw$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lw$c;->e:Lw$c;

    return-object p1
.end method

.method c(Lw$c;)Lw$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;)",
            "Lw$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lw$c;->d:Lw$c;

    return-object p1
.end method
