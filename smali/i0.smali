.class public Li0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ll0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0<",
            "Lh0;",
            ">;"
        }
    .end annotation
.end field

.field b:Ll0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0<",
            "Lm0;",
            ">;"
        }
    .end annotation
.end field

.field c:[Lm0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ll0;-><init>(I)V

    iput-object v0, p0, Li0;->a:Ll0;

    .line 3
    new-instance v0, Ll0;

    invoke-direct {v0, v1}, Ll0;-><init>(I)V

    iput-object v0, p0, Li0;->b:Ll0;

    const/16 v0, 0x20

    new-array v0, v0, [Lm0;

    .line 4
    iput-object v0, p0, Li0;->c:[Lm0;

    return-void
.end method
