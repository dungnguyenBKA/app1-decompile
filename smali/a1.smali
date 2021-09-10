.class public La1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La1;->e:Ljava/util/ArrayList;

    .line 3
    iget v0, p1, Lr0;->I:I

    .line 4
    iput v0, p0, La1;->a:I

    .line 5
    iget v0, p1, Lr0;->J:I

    .line 6
    iput v0, p0, La1;->b:I

    .line 7
    invoke-virtual {p1}, Lr0;->w()I

    move-result v0

    iput v0, p0, La1;->c:I

    .line 8
    invoke-virtual {p1}, Lr0;->o()I

    move-result v0

    iput v0, p0, La1;->d:I

    .line 9
    iget-object p1, p1, Lr0;->B:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0;

    .line 12
    iget-object v3, p0, La1;->e:Ljava/util/ArrayList;

    new-instance v4, La1$a;

    invoke-direct {v4, v2}, La1$a;-><init>(Lq0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lr0;)V
    .locals 3

    .line 1
    iget v0, p0, La1;->a:I

    .line 2
    iput v0, p1, Lr0;->I:I

    .line 3
    iget v0, p0, La1;->b:I

    .line 4
    iput v0, p1, Lr0;->J:I

    .line 5
    iget v0, p0, La1;->c:I

    invoke-virtual {p1, v0}, Lr0;->h0(I)V

    .line 6
    iget v0, p0, La1;->d:I

    invoke-virtual {p1, v0}, Lr0;->N(I)V

    .line 7
    iget-object v0, p0, La1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, La1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1$a;

    .line 9
    invoke-virtual {v2, p1}, La1$a;->a(Lr0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lr0;)V
    .locals 3

    .line 1
    iget v0, p1, Lr0;->I:I

    .line 2
    iput v0, p0, La1;->a:I

    .line 3
    iget v0, p1, Lr0;->J:I

    .line 4
    iput v0, p0, La1;->b:I

    .line 5
    invoke-virtual {p1}, Lr0;->w()I

    move-result v0

    iput v0, p0, La1;->c:I

    .line 6
    invoke-virtual {p1}, Lr0;->o()I

    move-result v0

    iput v0, p0, La1;->d:I

    .line 7
    iget-object v0, p0, La1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, La1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1$a;

    .line 9
    invoke-virtual {v2, p1}, La1$a;->b(Lr0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
