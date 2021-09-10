.class Lh70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw70;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw70<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj70;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv70;

    invoke-direct {v0}, Lv70;-><init>()V

    return-object v0
.end method
