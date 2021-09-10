.class final synthetic Llu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# instance fields
.field private final a:Lcv;

.field private final b:Lit;


# direct methods
.method private constructor <init>(Lcv;Lit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu;->a:Lcv;

    iput-object p2, p0, Llu;->b:Lit;

    return-void
.end method

.method public static a(Lcv;Lit;)Lcv$b;
    .locals 1

    new-instance v0, Llu;

    invoke-direct {v0, p0, p1}, Llu;-><init>(Lcv;Lit;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llu;->a:Lcv;

    iget-object v1, p0, Llu;->b:Lit;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lcv;->b0(Lcv;Lit;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
