.class public Lea0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lga0;

.field private final b:Lfa0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lga0;

    invoke-direct {v0}, Lga0;-><init>()V

    iput-object v0, p0, Lea0;->a:Lga0;

    new-instance v1, Lfa0;

    invoke-direct {v1, v0}, Lfa0;-><init>(Lda0;)V

    iput-object v1, p0, Lea0;->b:Lfa0;

    return-void
.end method


# virtual methods
.method public a()Lda0;
    .locals 1

    iget-object v0, p0, Lea0;->b:Lfa0;

    return-object v0
.end method

.method public b()Lda0;
    .locals 1

    iget-object v0, p0, Lea0;->a:Lga0;

    return-object v0
.end method
