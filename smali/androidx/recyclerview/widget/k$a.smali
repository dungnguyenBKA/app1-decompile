.class final Landroidx/recyclerview/widget/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/k$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/k$f;

    check-cast p2, Landroidx/recyclerview/widget/k$f;

    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/k$f;->a:I

    iget v1, p2, Landroidx/recyclerview/widget/k$f;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget p1, p1, Landroidx/recyclerview/widget/k$f;->b:I

    iget p2, p2, Landroidx/recyclerview/widget/k$f;->b:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method
