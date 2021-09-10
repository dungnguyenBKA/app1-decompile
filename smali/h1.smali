.class public final Lh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1;


# instance fields
.field private final a:Ld2;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ld2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh1;->a:Ld2;

    .line 3
    iput p2, p0, Lh1;->c:I

    .line 4
    iput p3, p0, Lh1;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lh1;->c:I

    return v0
.end method

.method public b()Ld2;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1;->a:Ld2;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lh1;->b:I

    return v0
.end method
