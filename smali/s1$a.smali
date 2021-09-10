.class Ls1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1;->f([Le2$f;I)Le2$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1$b<",
        "Le2$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ls1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le2$f;

    .line 2
    invoke-virtual {p1}, Le2$f;->d()I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Le2$f;

    .line 2
    invoke-virtual {p1}, Le2$f;->e()Z

    move-result p1

    return p1
.end method
