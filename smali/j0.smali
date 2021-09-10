.class public Lj0;
.super Lh0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Li0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh0;-><init>(Li0;)V

    return-void
.end method


# virtual methods
.method public a(Lm0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lh0;->a(Lm0;)V

    .line 2
    iget v0, p1, Lm0;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lm0;->i:I

    return-void
.end method
