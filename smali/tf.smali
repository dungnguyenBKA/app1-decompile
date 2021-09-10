.class public interface abstract Ltf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvf$a;

    invoke-direct {v0}, Lvf$a;-><init>()V

    invoke-virtual {v0}, Lvf$a;->a()Lvf;

    move-result-object v0

    sput-object v0, Ltf;->a:Ltf;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
