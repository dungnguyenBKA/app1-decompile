.class final Lms$b;
.super Lss$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lss$b;

.field private b:Lds;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lss$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lss;
    .locals 4

    .line 1
    new-instance v0, Lms;

    iget-object v1, p0, Lms$b;->a:Lss$b;

    iget-object v2, p0, Lms$b;->b:Lds;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lms;-><init>(Lss$b;Lds;Lms$a;)V

    return-object v0
.end method

.method public b(Lds;)Lss$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lms$b;->b:Lds;

    return-object p0
.end method

.method public c(Lss$b;)Lss$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lms$b;->a:Lss$b;

    return-object p0
.end method
